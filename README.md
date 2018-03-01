ubuntu STEAM 挂卡
===
① 本脚本主要运行ubuntu系统下，其他系统不一定支持，centos肯定不支持。<br>
---
② 本脚本需要你提前获得你的三样steam数据：<br>
---
1.你的steam64位id 可在https://steamdb.info/calculator/上获得并查看 <br>
2.登录帐号<br>
3.密码<br>
本脚本开源，不会盗取个人信息，填错帐号信息也无妨<br>
只需要在启动程序之前，修改ASF/config/ASF.json和bot1.json即可。<br>
ASF.json修改为<br>
{<br>
  "s_SteamOwnerID": "64位id",<br>
  "CurrentCulture": "zh-CN"<br>
}<br>
bot1.json修改为<br>
{<br>
  "Enabled": true,<br>
  "SteamLogin": "登录名",<br>
  "SteamPassword": "密码",<br>
  "IsBotAccount": false,<br>
  "FarmOffline": true<br>
}<br>
③运行程序<br>
---
输入 <br>
cd /root/ASF<br>
chmod +x ArchiSteamFarm<br>
sudo ./ArchiSteamFarm<br>
④安装之后不能正常运行的主要原因是：<br>
---
1.帐号信息填错<br>
2.dotnet-sdk-2.0.0安装错误，检查方法是输入dotnet --version<br>
如果提示2.0.0则说明别的问题，如果提示命令错误则说明net2.0安装没有成功。需要手动安装。<br>
手动安装参考https://www.cnblogs.com/dudu/p/5727155.html 教程是1.0的安装 <br>
要安装2.0只需要在安装完毕之后，输入sudo apt-get install dotnet-sdk-2.0.0便可。<br>
