install mysql 8 on centos 7


1. add repo
   ```
   sudo yum localinstall https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm
   ```

   check it 
   ```
   yum repolist enabled | grep "mysql.*-community.*"
   ```

2. install
   ```
   sudo yum install mysql-community-server
   ```

3. start mysql
   ```
   sudo service mysqld start
   ```
   check status
   ```
    sudo service mysqld status
   ```
4. get temporary password
   ```
   cat /var/log/mysqld.log |grep 'temporary password'
   ```
5. change password
   ```
   mysql -u root -p
   > alter user 'root'@'localhost' identified by '${new password}';
   ```
extra: change password policy

edit /etc/my.cnf
```
validate_password.policy=LOW
```
then 
```
sudo service mysqld restart service
```