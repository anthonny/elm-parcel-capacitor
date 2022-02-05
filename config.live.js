const dotenv = require('dotenv');
const fs = require('fs');
const path = require('path');

dotenv.config()

const configFileContent = fs.readFileSync(path.join(__dirname, 'capacitor.config.bundle.json'), 'utf8');
const config = JSON.parse(configFileContent);

config.server = {
    url: `http://${process.env.HOST_IP}:1234`,
    cleartext: true
}

fs.writeFileSync(path.join(__dirname, 'capacitor.config.json'), JSON.stringify(config, null, 2), 'utf8');