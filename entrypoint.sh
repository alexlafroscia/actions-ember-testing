#!/bin/sh

set -e

cd $GITHUB_WORKSPACE;

sh -c "CI=true ./node_modules/.bin/ember $*"