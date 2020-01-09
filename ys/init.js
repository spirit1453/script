// cation: only node standard modules are allowed in this script
const fs = require('fs')
const path = require('path')
const os = require('os')
const childProcess = require('child_process')

start()

async function start() {
    let baseDir = os.homedir()
    const nonSystemDistDir = "D:"
    if (os.platform() === '' && fs.existsSync(nonSystemDistDir)) {
        baseDir = nonSystemDistDir
    }
    const workingOnPath = path.resolve(baseDir, 'entry/code/working_on')
    console.log(workingOnPath)
}
