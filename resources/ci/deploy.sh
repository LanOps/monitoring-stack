#!/bin/sh

# download rancher-compose (should shift this into a build image / use a ready built image with rancher)
apk add --no-cache openssl git
wget -O/tmp/rancher-compose.tar.gz https://releases.rancher.com/compose/v0.12.5/rancher-compose-linux-amd64-v0.12.5.tar.gz

tar -zxvf /tmp/rancher-compose.tar.gz -C /tmp
cp $(find /tmp -name rancher-compose) /usr/local/bin/rancher-compose
chmod a+x /usr/local/bin/rancher-compose

# get the version number we're deploying
# APP_VERSION=$(cat ./version/version)
APP_VERSION=$1

echo upgrading to version ${APP_VERSION}
# run the rancher commands in the context of the rancher config
# ls -a ./app/resources/
# cd ./app/resources/rancher/
ls -a resources/
cd resources/rancher/

# upgrade to the new version
# This is for the test platform, so do 4 containers at a time with little interval, and auto-confirm rollout
APP_VERSION=${APP_VERSION} rancher-compose --url $RANCHER_URL \
	--access-key $RANCHER_ACCESS_KEY_STAGING \
	--secret-key $RANCHER_SECRET_KEY_STAGING \
	-p services-monitoring up \
	-u \
	--force-upgrade \
	-p \
	-c \
	-d \
	--batch-size 4 \
	--interval 1000