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
		await exec.exec( 'bash <(curl -fsSL https://get.docksal.io)' );
	} catch ( error ) {
		core.setFailed( error.message );
	}
}

run()
