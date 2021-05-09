FROM uber/web-base-image:12.13.0

WORKDIR /app

RUN npm install -g npm-publish-prerelease
