const { exec } = require('child_process');

const podInstall = function () {
    exec("cd ios && pod install", (err, stdout, stderr) => {

    });
};

// export default podInstall;

podInstall();