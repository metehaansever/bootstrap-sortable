#!/bin/bash

# workaround for https://github.com/Medium/phantomjs/issues/806 ?
# workaround for https://github.com/Medium/phantomjs/issues/808#issuecomment-414723230
export http_proxy=http://${buildContentId}+tracking:${accessToken}@${proxyServer}:${proxyPort}
export https_proxy=http://${buildContentId}+tracking:${accessToken}@${proxyServer}:${proxyPort}
mkdir -p /tmp/phantomjs/
pushd /tmp/phantomjs/
  # previously mirrored from https://github.com/Medium/phantomjs/releases/download/v2.1.1/phantomjs-2.1.1-linux-x86_64.tar.bz2
  # because proxy can't do https. in 2018. ugh.
  wget http://download.jboss.org/jbosstools/updates/requirements/node/phantomjs/phantomjs-2.1.1-linux-x86_64.tar.bz2
popd
npm install phantomjs-prebuilt
