#!/usr/bin/env bash

if [ -z $PUBLISH_REPO ]; then
	echo "PUBLISH_REPO is not set. Exiting"
	exit 0
fi

TARGET_COMMITISH=${TARGET_COMMITISH:-master}

# Revert to master if we find a SHA.
# Branch deploys will have a TARGET_COMMITISH of the branch name.
if [[ $TARGET_COMMITISH =~ [a-f0-9]{32} ]]; then
  echo "SHA found, using master as deploy target"
	TARGET_COMMITISH="master"
fi

echo "Begin deploy."

rm -rf deploy_repo || true
git clone -b ${TARGET_COMMITISH} ${PUBLISH_REPO} deploy_repo
docker-compose run app ./publish.sh
