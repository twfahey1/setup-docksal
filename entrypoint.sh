#!/bin/sh
export DOCKSAL_VERSION="${DOCKSAL_VERSION:-master}"

sudo mkdir -p $GITHUB_WORKSPACE/docksal &&
	sudo curl -fsSL "https://raw.githubusercontent.com/docksal/docksal/${DOCKSAL_VERSION}/bin/fin?r=${RANDOM}" -o $GITHUB_WORKSPACE/docksal/fin &&
	sudo chmod +x $GITHUB_WORKSPACE/docksal/fin &&
  echo "$GITHUB_WORKSPACE/docksal" >> $GITHUB_PATH &&
  echo "fin=$GITHUB_WORKSPACE/docksal/fin" >> $GITHUB_ENV

