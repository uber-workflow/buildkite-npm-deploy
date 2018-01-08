# buildkite-npm-deploy

Deploys packages to npm from Buildkite jobs.

Requires the following global environment variables:

* NPM_TOKEN - Which token to use to publish the repository to NPM.
* PUBLISH_REPO - The git address of the repository to publish.
* TARGET_COMMITISH - (Optional) branch or commit to publish from.
