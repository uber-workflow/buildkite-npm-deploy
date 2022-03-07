FROM uber/web-base-image:14.16.0

WORKDIR /app

RUN npm install -g npm-publish-prerelease
