FROM uber/web-base-image:2.0.2

WORKDIR /app

RUN npm install -g npm-publish-prerelease
