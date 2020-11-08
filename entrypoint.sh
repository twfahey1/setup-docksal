#!/bin/sh
export DOCKSAL_VERSION="${DOCKSAL_VERSION:-master}"

sudo mkdir -p $HOME/docksal &&
	sudo curl -fsSL "https://raw.githubusercontent.com/docksal/docksal/${DOCKSAL_VERSION}/bin/fin?r=${RANDOM}" -o $HOME/docksal/fin &&
	sudo chmod +x $HOME/docksal/fin &&
  echo "$HOME/docksal/" >> $GITHUB_PATH
