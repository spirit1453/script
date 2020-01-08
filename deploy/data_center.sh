set -e
mkdir -p ~/entry/project
cd ~/entry/project
git clone https://github.com/spirit1453/data_center.git
npm i pm2 -g
npm i
npm run deploy