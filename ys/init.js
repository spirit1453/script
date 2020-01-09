// cation: only node standard modules are allowed in this script
const fs = require('fs')
const path = require('path')
const os = require('os')

start()

async function start() {
    const nonSystemDistDir = "D:"
    console.log(fs.existsSync(nonSystemDistDir))
    const workingOnPath = path.resolve(os.homedir(), 'entry/code/working_on')
    console.log(workingOnPath)
}
