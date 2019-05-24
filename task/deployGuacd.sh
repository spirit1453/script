#!/usr/bin/env bash
yum install java-1.8.0-openjdk-devel cairo-devel libjpeg-turbo-devel libjpeg-devel libpng-devel uuid-devel libvncserver-devel openssl-devel gcc tomcat -y &&
echo 'dependency installed' &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/java.security -o /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64/jre/lib/security/java.security &&
curl http://archive.apache.org/dist/incubator/guacamole/0.9.11-incubating/source/guacamole-server-0.9.11-incubating.tar.gz -o /opt/guacamole-server-0.9.11-incubating.tar.gz &&
cd /opt &&
tar -xzf guacamole-server-0.9.11-incubating.tar.gz &&
cd guacamole-server-0.9.11-incubating &&
./configure --with-init-dir=/etc/init.d &&
make &&
make install &&
ldconfig &&
mkdir /usr/share/tomcat/.guacamole &&
mkdir /usr/share/tomcat/.guacamole/extensions &&
cd /usr/share/tomcat/.guacamole &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/guacamole.properties -o /usr/share/tomcat/.guacamole/guacamole.properties &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/noauth-config.xml -o /usr/share/tomcat/.guacamole/noauth-config.xml &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/guacamole.properties -o /usr/share/tomcat/.guacamole/guacamole.properties &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/extensions/guacamole-auth-noauth-0.9.11-incubating.jar -o /usr/share/tomcat/.guacamole/extensions/guacamole-auth-noauth-0.9.11-incubating.jar &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/tomcat.keystore -o /usr/share/tomcat/tomcat.keystore &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/server.xml -o /usr/share/tomcat/conf/server.xml &&
curl https://raw.githubusercontent.com/spirit1453/download/master/console/guacamole.war -o /usr/share/tomcat/webapps/guacamole.war &&
chmod 600 guacamole.properties &&
chown tomcat:tomcat guacamole.properties &&
chmod 600 noauth-config.xml &&
chown tomcat:tomcat noauth-config.xml &&
tomcat start &&
guacd &&
echo 'guacd service deployed' &&
curl http://192.144.200.234:3000/other/console.zip -o /opt/console.zip &&
unzip /opt/console.zip -d /opt &&
echo 'console deployed'
