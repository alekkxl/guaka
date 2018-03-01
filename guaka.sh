#!/bin/bash
echo "请确保填写的信息准确，填错了脚本不会有任何提示。";
echo "请在screen下运行ASF，运行方式是chmod +x ArchiSteamFarm，sudo ./ArchiSteamFarm";
echo "按Enter继续";
echo "输入你的steam ID号";
read ID
echo "输入你的帐号";
read ZH
echo "输入你的密码";
read MM
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get update
sudo apt-get install dotnet-sdk-2.0.0
apt install unzip
apt install screen
wget https://github.com/JustArchi/ArchiSteamFarm/releases/download/3.1.0.1/ASF-linux-x64.zip
unzip ASF-linux-x64.zip -d ASF/
cd ASF/config
touch bot1.json
echo -e "{
  "\"Enabled\"": true,
  "\"SteamLogin\"": "\"$ZH\"",
  "\"SteamPassword\"": "\"$MM\"",
  "\"IsBotAccount\"": false,
  "\"FarmOffline\"": true
}" > /root/ASF/config/bot1.json
echo -e "{
  "\"s_SteamOwnerID\"": "\"$ID\"",
  "\"CurrentCulture\"": "\"zh-CN\""
}" > /root/ASF/config/ASF.json
cd /root/ASF
