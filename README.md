# Setup Docksal

A Github Action for quickly installing and configuring [Docksal]](https://docksal.io).

## Usage

Simply run the action, and `fin` commands should be available.

## Node Modules Directory?

Yes, the `node_modules` directory was commited to this repo on purpose. Github actions requires these modules in order to run and I chose to include the Node modules in lieu of bundling all the modules into one file.
