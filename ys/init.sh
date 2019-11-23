workingOnDir=~/entry/code/working_on
if [ ! -d $workingOnDir ]; then
    mkdir -p $workingOnDir
fi

globalScriptDit=$workingOnDir/global_script
if [ ! -d $globalScriptDit ]; then
    git clone https://github.com/spirit1453/global_script.git $globalScriptDit
    cd $globalScriptDit
    git checkout dev_z
fi
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
which node || sudo apt install nodejs
which npm || sudo apt install nodejs