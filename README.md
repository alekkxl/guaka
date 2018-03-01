① 本脚本主要运行ubuntu系统下，其他系统不一定支持，centos肯定不支持。
② 本脚本需要你提前获得你的三样steam数据：
1.你的steam64位id 可在https://steamdb.info/calculator/上获得并查看 
2.登录帐号
3.密码
本脚本开源，不会盗取个人信息，填错帐号信息也无妨
只需要在启动程序之前，修改ASF/config/ASF.json和bot1.json即可。
ASF.json修改为
{
  "s_SteamOwnerID": "64位id",
  "CurrentCulture": "zh-CN"
}
bot1.json修改为
{
  "Enabled": true,
  "SteamLogin": "登录名",
  "SteamPassword": "密码",
  "IsBotAccount": false,
  "FarmOffline": true
}
③运行程序
输入 
cd /root/ASF
chmod +x ArchiSteamFarm
sudo ./ArchiSteamFarm
④安装之后不能正常运行的主要原因是：
1.帐号信息填错
2.dotnet-sdk-2.0.0安装错误，检查方法是输入dotnet --version
如果提示2.0.0则说明别的问题，如果提示命令错误则说明net2.0安装没有成功。需要手动安装。
手动安装参考https://www.cnblogs.com/dudu/p/5727155.html 教程是1.0的安装 
要安装2.0只需要在安装完毕之后，输入sudo apt-get install dotnet-sdk-2.0.0便可。
