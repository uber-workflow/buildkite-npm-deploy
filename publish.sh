#!/usr/bin/env bash

echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" >> ~/.npmrc
cd deploy_repo && \
	yarn && \
	npm-publish-prerelease --unsafe-perm
