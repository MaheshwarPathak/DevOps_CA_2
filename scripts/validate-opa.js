const { execSync } = require('child_process');
const path = require('path');

const workspace = process.cwd();
const command = `docker run --rm -v "${workspace}:/workspace" -w /workspace openpolicyagent/opa eval -i /workspace/deployment.json -d /workspace/policy -f pretty 'data.policy.allow'`;

console.log('Running OPA policy validation...');
execSync(command, { stdio: 'inherit', shell: true });
