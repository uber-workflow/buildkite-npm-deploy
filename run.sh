#!/usr/bin/env bash

echo "Begin deploy."

git clone ${BUILDKITE_REPO} deploy_repo
docker-compose run app ./publish.sh
