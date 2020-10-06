/**
 * Docksal Setup
 *
 * @package setupDocksal
 */

// External Dependencies
const core = require( '@actions/core' );
const exec = require( '@actions/exec' );

async function run() {
	try {
		await exec.exec( 'curl -fsSL https://get.docksal.io > install.sh && chmod +x install.sh && ./install.sh' );
	} catch ( error ) {
		core.setFailed( error.message );
	}
}

run()
