#!/bin/sh

#อัพเดตก่อนครับพี่น้อง
sudo apt-get update
sudo apt-get install neofetch

# text gambar
apt-get install boxes

# install lolcat
sudo apt-get -y install ruby
sudo gem install lolcat

# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(curl -4 icanhazip.com)
if [ $MYIP = "" ]; then
   MYIP=`ifconfig | grep 'inet addr:' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d: -f2 | awk '{ print $1}' | head -1`;
fi
MYIP2="s/xxxxxxxxx/$MYIP/g";

myip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
myint=`ifconfig | grep -B1 "inet addr:$myip" | head -n1 | awk '{print $1}'`;

 red='\e[1;31m'
               green='\e[0;32m'
               NC='\e[0m'
			   
               echo "Connect ocspanel.info..."
               sleep 1
               
			   echo "กำลังตรวจสอบ Permision..."
               sleep 1
               
			   echo -e "ได้รับอนุญาตแล้ว..." | lolcat
               sleep 1
			   
flag=0

if [ $USER != 'root' ]; then
	echo "คุณต้องเรียกใช้งานนี้เป็น root"
	exit
fi


vps="VPS";

if [[ $vps = "VPS" ]]; then
	source="http://xn--l3clxf6cwbe0gd7j.com/ocspanel"
else
	source="http://เฮียเบิร์ด.com"
fi

#REGISTER CONFIG
clear
 echo "" | lolcat
          echo "  
                         
                =============== OS-32 & 64-bit ================
                ♦                                             ♦
                ♦     AUTOSCRIPT CREATED BY เฮียเบิร์ด แงะตลอด   ♦
                ♦       -----------About Us------------       ♦ 
                ♦            Telp : 097-026-7262              ♦
                ♦         { VPN / SSH / OCS PANEL }           ♦ 
                ♦       http://facebook.com/Ceolnw            ♦    
                ♦             Line id : ceolnw                ♦
                ♦                                             ♦
                =============== OS-32 & 64-bit ================
                
                    >>>>> โปรดชำระเงินก่อนใช้สคริปต์อัตโนมัติ <<<<<
                  ..........................................
                  .         ราคา: 50 บาท = 1IP             .
                  .        ***********************         .
                  .        True Wallet Account             .
                  .        =======================         .
                  .        Phone : 097-026-7262            .
                  .        Name  : HERE BIRD LNWSHOP       .
                  ..........................................   
                                      
                           Thank You For Choice Us" | lolcat
			
	echo ""
	echo "----SCRIPT V.1 VIP"
	echo ""
	echo "( ใส่รหัสผ่านติดตั้ง... )"
	echo ""
read -p "๏๏๏โปรดใส่รหัสสำหรับติดตั้งสคลิปนี้.. : " passwds
wget -q -O /usr/bin/pass xn--l3clxf6cwbe0gd7j.com/config.txt
if ! grep -w -q $passwds /usr/bin/pass; then
clear
echo ""
echo ""
echo " เสียใจด้วย รหัสผิดว่ะ ถ้าไม่มีรหัสติดต่อแอดมินฯ เฮียเบิร์ด"
echo ""
echo " เด้งไปเลยเฟสนี้แน่นอน : www.facebook.com/ceonw"
echo ""
echo ""
rm /usr/bin/pass
rm vpnall.sh
exit
fi


clear
echo "
----------------------------------------------
[√] ยินดีต้อนรับเข้าสู่ ระบบสคริป เฮียเบิร์ด.com 
[√] Connect...VPN-SCRIPT
[√] กำลังเริ่มเปิด : SCRIPT..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#Requirement
if [ ! -e /usr/bin/curl ]; then
    apt-get -y update && apt-get -y upgrade
	apt-get -y install curl
fi


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Initialisasi var
[√] กำลังเริ่มเปิด : Initialisasi..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# initialisasi var
export DEBIAN_FRONTEND=noninteractive
OS=`uname -m`;
MYIP=$(curl -4 icanhazip.com)
if [ $MYIP = "" ]; then
   MYIP=`ifconfig | grep 'inet addr:' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d: -f2 | awk '{ print $1}' | head -1`;
fi
MYIP2="s/xxxxxxxxx/$MYIP/g";


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Check script
[√] กำลังเริ่มเปิด : Check script..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#check jika script sudah pernah diinput
scriptname='sshvpn';
mkdir -p /var/lib/setup-log
echo " " >> /var/lib/setup-log/setup.txt
scriptchecker=`cat /var/lib/setup-log/setup.txt | grep $scriptname`;
if [ "$scriptchecker" != "" ]; then
		clear
		echo -e " ";
		echo -e "Error! Anda sudah pernah memasukkan script ini sebelumnya";
		echo -e "Script ini hanya boleh dimasukkan 1x saja!";
		echo -e "---";
		echo -e "Jika Anda sebelumnya gagal dalam instalasi, Mohon untuk reinstall OS VPS Anda lebih dulu!";
		echo -e "Anda dapat mereinstall OS VPS Anda melalui VPS Control Panel";
		echo -e "Cara Mengakses VPS Control Panel: bit.ly/caraaksesvpspanel";
		echo -e " ";
        exit 0;
	else
		echo "";
fi
echo "$scriptname" >> /var/lib/setup-log/setup.txt


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Root
[√] กำลังเริ่มเปิด : Root..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# go to root
cd


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Ipv6
[√] กำลังเริ่มปิด : Ipv6..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# disable ipv6
echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6
sed -i '$ i\echo 1 > /proc/sys/net/ipv6/conf/all/disable_ipv6' /etc/rc.local


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...DNS ipv4
[√] กำลังเริ่มเพิ่ม : Dns ipv4..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#Add DNS Server ipv4
echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "nameserver 8.8.4.4" >> /etc/resolv.conf
sed -i '$ i\echo "nameserver 8.8.8.8" > /etc/resolv.conf' /etc/rc.local
sed -i '$ i\echo "nameserver 8.8.4.4" >> /etc/resolv.conf' /etc/rc.local


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Wget and curl
[√] กำลังเริ่มติดตั้ง : Wget and curl..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install wget and curl
apt-get update;apt-get -y install wget curl;


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Time zone
[√] กำลังเริ่มตั้งค่า : Time zone..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Repo
[√] กำลังเริ่มตั้งค่า : Repo..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# set repo
cat > /etc/apt/sources.list <<END2
deb http://security.debian.org/ jessie/updates main contrib non-free
deb-src http://security.debian.org/ jessie/updates main contrib non-free
deb http://http.us.debian.org/debian jessie main contrib non-free
deb http://packages.dotdeb.org jessie all
deb-src http://packages.dotdeb.org jessie all
END2
wget "http://www.dotdeb.org/dotdeb.gpg"
cat dotdeb.gpg | apt-key add -;rm dotdeb.gpg


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect...Remove unused
[√] กำลังเริ่มลบ : Unused..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# remove unused
apt-get -y --purge remove samba*;
apt-get -y --purge remove apache2*;
apt-get -y --purge remove sendmail*;
apt-get -y --purge remove bind9*;
apt-get -y purge sendmail*
apt-get -y remove sendmail*


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Update
[√] กำลังเริ่มต้น : Update..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# update
apt-get update; apt-get -y upgrade;


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Webserver
[√] กำลังเริ่มติดตั้ง : Webserver..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install webserver
apt-get -y install nginx php5-fpm php5-cli


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Essential
[√] กำลังเริ่มติดตั้ง : Essential..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install essential package
echo "mrtg mrtg/conf_mods boolean true" | debconf-set-selections
apt-get -y install bmon iftop htop nmap axel nano iptables traceroute sysv-rc-conf dnsutils bc nethogs openvpn vnstat less screen psmisc apt-file whois ptunnel ngrep mtr git zsh mrtg snmp snmpd snmp-mibs-downloader unzip unrar rsyslog debsums rkhunter
apt-get -y install build-essential
apt-get -y install libio-pty-perl libauthen-pam-perl apt-show-versions


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Exim
[√] กำลังเริ่มปิด : Exim..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# disable exim
service exim4 stop
sysv-rc-conf exim4 off


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Apt-file
[√] กำลังเริ่มติดตั้ง : Apt-file..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# update apt-file
apt-file update


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Vnstat
[√] กำลังเริ่มตั้งค่า : Vnstat..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# setting vnstat
vnstat -u -i eth0
service vnstat restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Screenfetch
[√] กำลังเริ่มตั้งค่า : Screenfetch..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install screenfetch
cd
wget -O /usr/bin/screenfetch "http://script.hostingtermurah.net/repo/screenfetch"
chmod +x /usr/bin/screenfetch
echo "clear" >> .profile
echo "screenfetch" >> .profile


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Webserver
[√] กำลังเริ่มตั้งค่า : Webserver..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install webserver
cd
rm /etc/nginx/sites-enabled/default
rm /etc/nginx/sites-available/default
cat > /etc/nginx/nginx.conf <<END3
user www-data;
worker_processes 1;
pid /var/run/nginx.pid;
events {
	multi_accept on;
  worker_connections 1024;
}
http {
	gzip on;
	gzip_vary on;
	gzip_comp_level 5;
	gzip_types    text/plain application/x-javascript text/xml text/css;
	autoindex on;
  sendfile on;
  tcp_nopush on;
  tcp_nodelay on;
  keepalive_timeout 65;
  types_hash_max_size 2048;
  server_tokens off;
  include /etc/nginx/mime.types;
  default_type application/octet-stream;
  access_log /var/log/nginx/access.log;
  error_log /var/log/nginx/error.log;
  client_max_body_size 32M;
	client_header_buffer_size 8m;
	large_client_header_buffers 8 8m;
	fastcgi_buffer_size 8m;
	fastcgi_buffers 8 8m;
	fastcgi_read_timeout 600;
  include /etc/nginx/conf.d/*.conf;
}
END3
mkdir -p /home/vps/public_html
wget -O /home/vps/public_html/index.html "http://xn--l3clxf6cwbe0gd7j.com/index.html"
echo "<?php phpinfo(); ?>" > /home/vps/public_html/info.php
args='$args'
uri='$uri'
document_root='$document_root'
fastcgi_script_name='$fastcgi_script_name'
cat > /etc/nginx/conf.d/vps.conf <<END4
server {
  listen       85;
  server_name  127.0.0.1 localhost;
  access_log /var/log/nginx/vps-access.log;
  error_log /var/log/nginx/vps-error.log error;
  root   /home/vps/public_html;
  location / {
    index  index.html index.htm index.php;
    try_files $uri $uri/ /index.php?$args;
  }
  location ~ \.php$ {
    include /etc/nginx/fastcgi_params;
    fastcgi_pass  127.0.0.1:9000;
    fastcgi_index index.php;
    fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
  }
}
END4
sed -i 's/listen = \/var\/run\/php5-fpm.sock/listen = 127.0.0.1:9000/g' /etc/php5/fpm/pool.d/www.conf
service php5-fpm restart
service nginx restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..SSH
[√] กำลังเริ่มตั้งค่า : SSH..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# setting port ssh
sed -i '/Port 22/a Port 143' /etc/ssh/sshd_config
sed -i '/Port 22/a Port  90' /etc/ssh/sshd_config
sed -i 's/Port 22/Port  22/g' /etc/ssh/sshd_config
service ssh restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Dropbear
[√] กำลังเริ่มติดตั้ง : Dropbear..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install dropbear
apt-get -y install dropbear
sed -i 's/NO_START=1/NO_START=0/g' /etc/default/dropbear
sed -i 's/DROPBEAR_PORT=22/DROPBEAR_PORT=443/g' /etc/default/dropbear
sed -i 's/DROPBEAR_EXTRA_ARGS=/DROPBEAR_EXTRA_ARGS="-p 109 -p 110"/g' /etc/default/dropbear
echo "/bin/false" >> /etc/shells
service dropbear restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Dropbear 2016
[√] กำลังเริ่มติดตั้ง : Dropbear 2016..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#Upgrade to Dropbear 2016
cd
apt-get install zlib1g-dev
wget http://xn--l3clxf6cwbe0gd7j.com/ocspanel/script-all/dropbear-2016.74.tar.bz2
bzip2 -cd dropbear-2016.74.tar.bz2 | tar xvf -
cd dropbear-2016.74
./configure
make && make install
mv /usr/sbin/dropbear /usr/sbin/dropbear.old
ln /usr/local/sbin/dropbear /usr/sbin/dropbear
cd && rm -rf dropbear-2016.74 && rm -rf dropbear-2016.74.tar.bz2
service dropbear restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Vnstat gui
[√] กำลังเริ่มติดตั้ง : Vnstat gui..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install vnstat gui
cd /home/vps/public_html/
wget http://xn--l3clxf6cwbe0gd7j.com/ocspanel/script-all/vnstat_php_frontend-1.5.1.tar.gz
tar xf vnstat_php_frontend-1.5.1.tar.gz
rm vnstat_php_frontend-1.5.1.tar.gz
mv vnstat_php_frontend-1.5.1 vnstat
cd vnstat
sed -i "s/\$iface_list = array('eth0', 'sixxs');/\$iface_list = array('eth0');/g" config.php
sed -i "s/\$language = 'nl';/\$language = 'en';/g" config.php
sed -i 's/Internal/Internet/g' config.php
sed -i '/SixXS IPv6/d' config.php
cd


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Fail2ban
[√] กำลังเริ่มติดตั้ง : Fail2ban..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install fail2ban
apt-get -y install fail2ban
service fail2ban restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Squid3
[√] กำลังเริ่มติดตั้ง : Squid3..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install squid3
apt-get -y install squid3
cat > /etc/squid3/squid.conf <<-END
acl localhost src 127.0.0.1/32 ::1
acl to_localhost dst 127.0.0.0/8 0.0.0.0/32 ::1
acl SSL_ports port 443
acl Safe_ports port 80
acl Safe_ports port 21
acl Safe_ports port 443
acl Safe_ports port 70
acl Safe_ports port 210
acl Safe_ports port 1025-65535
acl Safe_ports port 280
acl Safe_ports port 488
acl Safe_ports port 591
acl Safe_ports port 777
acl CONNECT method CONNECT
acl SSH dst xxxxxxxxx-xxxxxxxxx/32
http_access allow SSH
http_access allow manager localhost
http_access deny manager
http_access allow localhost
http_access deny all
http_port 8080
http_port 8000
http_port 80
http_port 3128
coredump_dir /var/spool/squid3
refresh_pattern ^ftp: 1440 20% 10080
refresh_pattern ^gopher: 1440 0% 1440
refresh_pattern -i (/cgi-bin/|\?) 0 0% 0
refresh_pattern . 0 20% 4320
visible_hostname Proxy.ocspanel.info
END
sed -i $MYIP2 /etc/squid3/squid.conf;
service squid3 restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Webmin
[√] กำลังเริ่มติดตั้ง : Webmin..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install webmin
cd
wget "http://xn--l3clxf6cwbe0gd7j.com/ocspanel/script-all/webmin_1.801_all.deb"
dpkg --install webmin_1.801_all.deb;
apt-get -y -f install;
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
rm /root/webmin_1.801_all.deb
service webmin restart
service vnstat restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..PPTP
[√] กำลังเริ่มติดตั้ง : PPTP..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#install PPTP
apt-get -y install pptpd
cat > /etc/ppp/pptpd-options <<END
name pptpd
refuse-pap
refuse-chap
refuse-mschap
require-mschap-v2
require-mppe-128
ms-dns 8.8.8.8
ms-dns 8.8.4.4
proxyarp
nodefaultroute
lock
nobsdcomp
END

cat > /etc/pptpd.conf <<END
option /etc/ppp/pptpd-options
logwtmp
localip 10.1.0.1
remoteip 10.1.0.5-100
END

cat >> /etc/ppp/ip-up <<END
ifconfig ppp0 mtu 1400
END
mkdir /var/lib/premium-script
/etc/init.d/pptpd restart


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Mrtg
[√] กำลังเริ่มติดตั้ง : Mrtg..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install mrtg
wget -O /etc/snmp/snmpd.conf "http://xn--l3clxf6cwbe0gd7j.com/ocspanel/script-all/snmpd.conf"
wget -O /root/mrtg-mem.sh "http://xn--l3clxf6cwbe0gd7j.com/ocspanel/script-all/mrtg-mem.sh"
chmod +x /root/mrtg-mem.sh
cd /etc/snmp/
sed -i 's/TRAPDRUN=no/TRAPDRUN=yes/g' /etc/default/snmpd
service snmpd restart
snmpwalk -v 1 -c public localhost 1.3.6.1.4.1.2021.10.1.3.1
mkdir -p /home/vps/public_html/mrtg
cfgmaker --zero-speed 100000000 --global 'WorkDir: /home/vps/public_html/mrtg' --output /etc/mrtg.cfg public@localhost
curl "http://script.hostingtermurah.net/repo/mrtg.conf" >> /etc/mrtg.cfg
sed -i 's/WorkDir: \/var\/www\/mrtg/# WorkDir: \/var\/www\/mrtg/g' /etc/mrtg.cfg
sed -i 's/# Options\[_\]: growright, bits/Options\[_\]: growright/g' /etc/mrtg.cfg
indexmaker --output=/home/vps/public_html/mrtg/index.html /etc/mrtg.cfg
if [ -x /usr/bin/mrtg ] && [ -r /etc/mrtg.cfg ]; then mkdir -p /var/log/mrtg ; env LANG=C /usr/bin/mrtg /etc/mrtg.cfg 2>&1 | tee -a /var/log/mrtg/mrtg.log ; fi
if [ -x /usr/bin/mrtg ] && [ -r /etc/mrtg.cfg ]; then mkdir -p /var/log/mrtg ; env LANG=C /usr/bin/mrtg /etc/mrtg.cfg 2>&1 | tee -a /var/log/mrtg/mrtg.log ; fi
if [ -x /usr/bin/mrtg ] && [ -r /etc/mrtg.cfg ]; then mkdir -p /var/log/mrtg ; env LANG=C /usr/bin/mrtg /etc/mrtg.cfg 2>&1 | tee -a /var/log/mrtg/mrtg.log ; fi
cd


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..OpenVPN
[√] กำลังเริ่มติดตั้ง : OpenVPN..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#install OpenVPN
apt-get -y install openvpn easy-rsa openssl iptables
cp -r /usr/share/easy-rsa/ /etc/openvpn
mkdir /etc/openvpn/easy-rsa/keys
# ganti bits
sed -i 's|export KEY_COUNTRY="US"|export KEY_COUNTRY="ID"|' /etc/openvpn/easy-rsa/vars
sed -i 's|export KEY_PROVINCE="CA"|export KEY_PROVINCE="Jawa Barat"|' /etc/openvpn/easy-rsa/vars
sed -i 's|export KEY_CITY="SanFrancisco"|export KEY_CITY="Bandung"|' /etc/openvpn/easy-rsa/vars
sed -i 's|export KEY_ORG="Fort-Funston"|export KEY_ORG="HostingTermurah.net"|' /etc/openvpn/easy-rsa/vars
sed -i 's|export KEY_EMAIL="me@myhost.mydomain"|export KEY_EMAIL="sales@hostingtermurah.net"|' /etc/openvpn/easy-rsa/vars
sed -i 's|export KEY_OU="MyOrganizationalUnit"|export KEY_OU="HostingTermurah.net"|' /etc/openvpn/easy-rsa/vars
sed -i 's|export KEY_NAME="EasyRSA"|export KEY_NAME="server"|' /etc/openvpn/easy-rsa/vars
sed -i 's|export KEY_OU=changeme|export KEY_OU=HostingTermurah|' /etc/openvpn/easy-rsa/vars

clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Diffie-Helman
[√] กำลังเริ่มติดตั้ง : Diffie-Helman..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#Buat Diffie-Helman Pem
openssl dhparam -out /etc/openvpn/dh2048.pem 2048


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..PKI
[√] กำลังเริ่มติดตั้ง : PKI..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# Buat PKI
cd /etc/openvpn/easy-rsa
. ./vars
./clean-all
export EASY_RSA="${EASY_RSA:-.}"
"$EASY_RSA/pkitool" --initca $*

clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Key server
[√] กำลังเริ่มติดตั้ง : Key server..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# buat key server
export EASY_RSA="${EASY_RSA:-.}"
"$EASY_RSA/pkitool" --server server

clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..KEY CN
[√] กำลังเริ่มติดตั้ง : KEY CN..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# seting KEY CN
export EASY_RSA="${EASY_RSA:-.}"
"$EASY_RSA/pkitool" client
cd
#cp /etc/openvpn/easy-rsa/keys/{server.crt,server.key,ca.crt} /etc/openvpn
cp /etc/openvpn/easy-rsa/keys/server.crt /etc/openvpn/server.crt
cp /etc/openvpn/easy-rsa/keys/server.key /etc/openvpn/server.key
cp /etc/openvpn/easy-rsa/keys/ca.crt /etc/openvpn/ca.crt

clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Server
[√] กำลังเริ่มตั้งค่า : Server..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# Setting Server
cat > /etc/openvpn/server.conf <<-END
port 1194
proto tcp
dev tun
ca ca.crt
cert server.crt
key server.key
dh dh2048.pem
client-cert-not-required
username-as-common-name
plugin /usr/lib/openvpn/openvpn-plugin-auth-pam.so login
server 192.168.100.0 255.255.255.0
ifconfig-pool-persist ipp.txt
push "redirect-gateway def1 bypass-dhcp"
push "dhcp-option DNS 8.8.8.8"
push "dhcp-option DNS 8.8.4.4"
push "route-method exe"
push "route-delay 2"
duplicate-cn
push "route-method exe"
push "route-delay 2"
keepalive 10 120
comp-lzo
user nobody
group nogroup
persist-key
persist-tun
status openvpn-status.log
log         openvpn.log
verb 3
cipher AES-128-CBC
END


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..OpenVPN
[√] กำลังเริ่มตั้งค่า : OpenVPN..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#Create OpenVPN Config
mkdir -p /home/vps/public_html
cat > /home/vps/public_html/client.ovpn <<-END
# OpenVPN Configuration www.fb.com/ceolnw
# (Official Partner Ocspanel.info)
client
dev tun
proto tcp
persist-key
persist-tun
dev tun
pull
http-proxy-retry
http-proxy $MYIP 8080
resolv-retry infinite
nobind
user nobody
group nogroup
comp-lzo
ns-cert-type server
verb 3
mute 2
mute-replay-warnings
auth-user-pass
redirect-gateway def1
script-security 2
route 8.8.8.8 8.8.4.4
route-method exe
route-delay 2
remote $MYIP:1194@static.tlcdn1.com/cdn.line-apps.com/line.naver.jp/nelo2-col.linecorp.com/mdm01.cpall.co.th/lvs.truehits.in.th/dl-obs.official.line.naver.jp
cipher AES-128-CBC
END
echo '<ca>' >> /home/vps/public_html/client.ovpn
cat /etc/openvpn/ca.crt >> /home/vps/public_html/client.ovpn
echo '</ca>' >> /home/vps/public_html/client.ovpn
cd /home/vps/public_html/
tar -czf /home/vps/public_html/openvpn.tar.gz client.ovpn
tar -czf /home/vps/public_html/client.tar.gz client.ovpn
cd


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..OpenVPN
[√] กำลังเริ่มรีสตาร์ท : OpenVPN..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# Restart openvpn
/etc/init.d/openvpn restart
service openvpn start
service openvpn status


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..USW
[√] กำลังเริ่มตั้งค่า : USW..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#Setting USW
apt-get install ufw
ufw allow ssh
ufw allow 1194/tcp
sed -i 's|DEFAULT_INPUT_POLICY="DROP"|DEFAULT_INPUT_POLICY="ACCEPT"|' /etc/default/ufw
sed -i 's|DEFAULT_FORWARD_POLICY="DROP"|DEFAULT_FORWARD_POLICY="ACCEPT"|' /etc/default/ufw
cat > /etc/ufw/before.rules <<-END

clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..OPENVPN
[√] กำลังเริ่มเปิด : OPENVPN..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# START OPENVPN RULES
# NAT table rules
*nat
:POSTROUTING ACCEPT [0:0]

clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Traffic
[√] กำลังเริ่มตั้งค่า : Traffic..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# Allow traffic from OpenVPN client to eth0
-A POSTROUTING -s 10.8.0.0/8 -o eth0 -j MASQUERADE
COMMIT


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..OPENVPN
[√] กำลังเริ่มปิด : OPENVPN..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# END OPENVPN RULES
END
ufw enable
ufw status
ufw disable



clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Forward
[√] กำลังเริ่มตั้งค่า : Forward..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# set ipv4 forward
echo 1 > /proc/sys/net/ipv4/ip_forward
sed -i 's|#net.ipv4.ip_forward=1|net.ipv4.ip_forward=1|' /etc/sysctl.conf



clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Badvpn
[√] กำลังเริ่มติดตั้ง : Badvpn..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# install badvpn
wget -O /usr/bin/badvpn-udpgw "http://xn--l3clxf6cwbe0gd7j.com/ocspanel/script-all/badvpn-udpgw"
if [ "$OS" == "x86_64" ]; then
  wget -O /usr/bin/badvpn-udpgw "http://xn--l3clxf6cwbe0gd7j.com/ocspanel/script-all/badvpn-udpgw64"
fi
sed -i '$ i\screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300' /etc/rc.local
chmod +x /usr/bin/badvpn-udpgw
screen -AmdS badvpn badvpn-udpgw --listen-addr 127.0.0.1:7300


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..IPtables
[√] กำลังเริ่มตั้งค่า : IPtables..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#Setting IPtables
cat > /etc/iptables.up.rules <<-END
*filter
:FORWARD ACCEPT [0:0]
:INPUT ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
-A FORWARD -i eth0 -o ppp0 -m state --state RELATED,ESTABLISHED -j ACCEPT
-A FORWARD -i ppp0 -o eth0 -j ACCEPT
-A OUTPUT -d 23.66.241.170 -j DROP
-A OUTPUT -d 23.66.255.37 -j DROP
-A OUTPUT -d 23.66.255.232 -j DROP
-A OUTPUT -d 23.66.240.200 -j DROP
-A OUTPUT -d 128.199.213.5 -j DROP
-A OUTPUT -d 128.199.149.194 -j DROP
-A OUTPUT -d 128.199.196.170 -j DROP
-A OUTPUT -d 103.52.146.66 -j DROP
-A OUTPUT -d 5.189.172.204 -j DROP
COMMIT
*nat
:PREROUTING ACCEPT [0:0]
:OUTPUT ACCEPT [0:0]
:POSTROUTING ACCEPT [0:0]
-A POSTROUTING -o eth0 -j MASQUERADE
-A POSTROUTING -s 192.168.100.0/24 -o eth0 -j MASQUERADE
-A POSTROUTING -s 10.1.0.0/24 -o eth0 -j MASQUERADE
COMMIT
END
sed -i '$ i\iptables-restore < /etc/iptables.up.rules' /etc/rc.local
sed -i $MYIP2 /etc/iptables.up.rules;
iptables-restore < /etc/iptables.up.rules


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Script
[√] กำลังเริ่มติดตั้ง : Script..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# download script
cd
wget -O /usr/local/bin/bench-network $source/menufree/bench-network
wget -O /usr/local/bin/menu $source/menufree/menu
wget -O /usr/local/bin/ram $source/menufree/ram
wget -O /usr/local/bin/speedtest $source/menufree/speedtest
wget -O /usr/local/bin/user-add $source/menufree/user-add
wget -O /usr/local/bin/user-addday $source/menufree/user-addday
wget -O /usr/local/bin/user-ban $source/menufree/user-ban
wget -O /usr/local/bin/user-delete $source/menufree/user-delete
wget -O /usr/local/bin/user-generate $source/menufree/user-generate
wget -O /usr/local/bin/user-limit $source/menufree/user-limit
wget -O /usr/local/bin/user-list $source/menufree/user-list
wget -O /usr/local/bin/user-password $source/menufree/user-password
wget -O /usr/local/bin/user-trial $source/menufree/user-trial
wget -O /usr/local/bin/user-unban $source/menufree/user-unban

# setup script
cd
chmod +x /usr/local/bin/bench-network
chmod +x /usr/local/bin/menu
chmod +x /usr/local/bin/ram
chmod +x /usr/local/bin/speedtest
chmod +x /usr/local/bin/user-add
chmod +x /usr/local/bin/user-addday
chmod +x /usr/local/bin/user-ban
chmod +x /usr/local/bin/user-delete
chmod +x /usr/local/bin/user-generate
chmod +x /usr/local/bin/user-limit
chmod +x /usr/local/bin/user-list
chmod +x /usr/local/bin/user-password
chmod +x /usr/local/bin/user-trial
chmod +x /usr/local/bin/user-unban


clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Finalisasi
[√] กำลังเริ่มตั้งค่า : Finalisasi..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
# finalisasi
apt-get -y autoremove
chown -R www-data:www-data /home/vps/public_html
service nginx start
service php5-fpm start
service vnstat restart
service openvpn restart
service snmpd restart
service ssh restart
service dropbear restart
service fail2ban restart
service squid3 restart
service webmin restart
service pptpd restart
sysv-rc-conf rc.local on



clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..History
[√] กำลังเริ่มเคลีย : History..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5
 
#clearing history
rm -f .bash_history && .history && history -c
rm vpnall.sh



clear
echo "
----------------------------------------------
[√] SOURCE : เฮียเบิร์ด.com 
[√] Connect..Succeed
[√] กำลังประมวลผล : การติดตั้ง..... [ OK !! ]
----------------------------------------------
 " | lolcat
 sleep 5


# INFO
clear
 echo ""
          echo -e "  
                         
         =============== OS-32 & 64-bit ================
         ♦                                             ♦
         ♦     AUTOSCRIPT CREATED BY เฮียเบิร์ด แงะตลอด   ♦
         ♦       -----------About Us------------       ♦ 
         ♦            Telp : 097-026-7262              ♦
         ♦         { VPN / SSH / OCS PANEL }           ♦ 
         ♦       http://facebook.com/Ceolnw            ♦    
         ♦             Line id : ceolnw                ♦
         ♦                                             ♦
         =============== OS-32 & 64-bit ================ 
                                      
                    Thank You For Choice Us" | lolcat
			
echo "" | lolcat
echo "====================================================================" | lolcat
echo "       ดำเนินการเสร็จสิ้น... กรุณาพิมพ์คำสั่ง menu เพื่อไปยังขั้นตอนถัดไป"
echo "====================================================================" | lolcat
echo "----- SCRIPT OCSPANEL.INFO / เฮียเบิร์ด.com / FACEBOOK.COM/CEOLNW------" | lolcat
echo "" | lolcat

cd
rm -f /root/vpnall.sh
