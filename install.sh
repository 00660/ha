
#!/bin/bash
#配置环境变量
HOME="/opt/hass"
BIN="/usr/bin"
ht=""$BIN"/ht"
DOWINURL="https://mirrors.huaweicloud.com"
PY="python"
ver="3.10.6"
IN="install"
ha="homeassistant"
HABIN=""$HOME"/bin/hass"
update=""$BIN"/update"
PYFILE="Python-3.10.6"
SQLURL="https://www.sqlite.org/2022/"
SQLFILE="sqlite-autoconf-3390200"
API="https://api.day.app/avWB5WfSJR8Vw9KG6yNVyd/"
UROOT="unchroot am start -a "android.intent.action.VIEW""
echo "温馨提示安装过程非常耗时！喝杯咖啡，遛个弯在来查看是否安装成功！安装完毕默认会播放音乐提醒，同时自动打开WEB网页配置页面"
#################################
#更新系统组件
curl $API"请求安装" >/dev/null 2>&1
apt-get update -y >/dev/null 2>&1
echo "更新系统组件"
apt-get upgrade -y  >/dev/null 2>&1
echo "安装依赖文件---静默执行中，请勿退出ssh客户端"
apt-get install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev ffmpeg liblzma-dev zlib1g-dev libffi-dev virtualenv yum -y  >/dev/null 2>&1
echo 安装pip3依赖
apt-get install -y python3 python3-dev python3-venv python3-pip bluez libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf libopenjp2-7 libtiff5 libturbojpeg0-dev tzdata >/dev/null 2>&1
echo 下载安装文件
wget $DOWINURL/$PY/$ver/$PYFILE.tgz  >/dev/null 2>&1
echo 释放安装文件源码
tar -xvf $PYFILE.tgz  >/dev/null 2>&1
echo 下载源码缺省库
wget $SQLURL$SQLFILE.tar.gz  >/dev/null 2>&1
tar xf $SQLFILE.tar.gz
cd $SQLFILE
echo 编译源码中-视本机性能而定，时间比较漫长，请勿关闭ssh
./configure
sudo make
sudo make install
ls -l /usr/local/lib/*sqlite*  >/dev/null 2>&1
ls -l /usr/local/include/*sqlite*  >/dev/null 2>&1
cp sqlite3 /usr/bin/sqlite3
cd ../$PYFILE
LD_RUN_PATH=/usr/local/lib ./configure LDFLAGS="-L/usr/local/lib" CPPFLAGS="-I/usr/local/include"  --prefix=/opt/python3.10
LD_RUN_PATH=/usr/local/lib make
make
make install
echo 清理安装文件
rm -rf ../$PYFILE $PYFILE.tgz $SQLFILE $SQLFILE.tar.gz >/dev/null 2>&1
mkdir $HOME
cd $HOME
../"$PY"3.10/bin/"$PY"3 -m venv .
source bin/activate


pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
"$PY"3 -m pip install wheel
pip3 $IN sqlalchemy dict netdisco fnvhash libtool legacy above doing edge-tts request pillow
pip3 $IN --upgrade pip
pip3 $IN --upgrade setuptools
pip3 $IN $ha
pip3 $IN tail status Invalid method valid result distribution matching >> install.log 2>&1
##################判断是否安装成功
#if [ ! -f $HABIN ];then
#echo "安装失败，请检查网络重试"
#echo "退出安装"
#exit 5
#else
#echo "安装成功"
#fi

##############
echo "正在为你生成快速切换虚拟环境启动命令"
echo " echo 请稍后正在为你启动服务中loding" >> $ht
echo "nohup $HOME/bin/hass >/dev/null 2>&1 &" >> $ht
echo "echo 服务常驻启动成功" >> $ht
chmod 777 $ht
#生成更新homeassistant文件

echo "cd $HOME/bin/  >/dev/null 2>&1
#进入安装目录
source acti*  >/dev/null 2>&1
#切换到虚拟环境
echo "正在准备检测更新！"
sleep 15
echo "更新过程中，请不要退出ssh客户端！直到提示更新成功为止！"
pip3 $IN --upgrade $ha
#安装homeassistant更新
echo "更新完成稍后！正在结束进程"
pkill hass
#结束homeassistant进程
echo "正在重启homeassistant服务"
ht
#重启homeassistant服务
echo "服务启动成功"" >> $update
chmod 777 $update
deactivate
#start homeassistant
ht
#############
ip=$( hostname -I|cut -c 1-11 )
ip=$ip":8123"
while true
do

ret_code=`curl -I -s --connect-timeout 1 $ip -w %{http_code} | tail -n1`

if [ "x$ret_code" = "x405" ]; then

break
else
echo "homeassistant服务不在线"
echo 查询中

fi
done
echo "可以访问homeassistant"
#本机ip地址
echo -e "\033[36m小哈http://"$ip"访问web页面配置\033[0m"
curl $API"安装执行成功" >/dev/null 2>&1
#打开播放器提醒安装成功
$UROOT -t "audio/mp3" -d "http://hao.haolingsheng.com/ring/000/995/52513bb6a4546b8822c89034afb8bacb.mp3" >/dev/null 2>&1
sleep 10
#########打开homeassistant配置页面板
echo 打开浏览器配置面板
$UROOT -d  http://"$ip"
####
if [ ! -f /etc/motd ];then
echo "test"
else
rm -r /etc/motd
fi
echo "欢迎使用安卓Home Assaistant系统
控制台命令:ht启动小哈
控制台命令:update更新homeassistant
PS:执行命令前请先输入su回车
-----------------------------------------.
╭⌒╮下雨啦━┅~ ¤　 ╭⌒╮ ╭⌒╮ 
╭⌒╭⌒╮╭⌒╮～╭⌒╮︶︶,　︶︶ 
,︶︶︶︶,''︶~~ ,''~︶︶　 ,'' 
  ╱◥█◣　╱◥█◣ 
︱田︱田︱︱田︱田︱ 
╬╬╬╬╬╬╬╬╬╬╬╬╬╬ 
############################
§∩﹏∩ 
╭＾＾╮╭—☆—★—☆—★—☆—╮ 
╰——╯＜别让天气影响到心情哟!:│ 
　╰○○╯╰—★—☆—★—☆—★—╯
:∴★∵* * ☆．∴★∵*★·'☆°·'☆° 
∴█████．☆．∵★∵∴☆·'☆° 
☆█田█田█．* ☆．∴°··°．·'°∴★∵ 
∵█田█田█．★∵∴☆．★∵∴·'☆° 
★█田█田█． °·★·'☆°． 同一个星空下★..* 
∵█田█田█ °·'·'★°∴ 望著天空的星星雨* * 
☆█████ ★'☆ 一起许下你我滴愿望
-----------------------------------------." >> /etc/motd
