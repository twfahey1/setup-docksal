#!/bin/sh
export DOCKSAL_VERSION="${DOCKSAL_VERSION:-master}"

sudo mkdir -p /usr/local/bin &&
	sudo curl -fsSL "https://raw.githubusercontent.com/docksal/docksal/${DOCKSAL_VERSION}/bin/fin?r=${RANDOM}" -o /usr/local/bin/fin &&
	sudo chmod +x /usr/local/bin/fin &&
	fin update