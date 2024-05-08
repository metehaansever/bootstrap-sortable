#!/bin/bash

# Download PhantomJS tarball
curl -LO https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2

# Extract tarball
tar xjf phantomjs-2.1.1-linux-x86_64.tar.bz2

# Move PhantomJS binary to /usr/local/bin
mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin

# Cleanup
rm -rf phantomjs-2.1.1-linux-x86_64*
