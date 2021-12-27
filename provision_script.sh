##This file is to Provision softwares/tools

echo "Inside the VM server"

#Update the packages
#yum update

###Java Install(install OpenJDK 8 JDK using yum):
# sudo yum install java-1.8.0-openjdk-devel
# java --version
# ###Set JAVA_HOME path:
# echo "# JAVA Environment Variables" > /etc/profile.d/java.sh
# echo "JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk" > /etc/profile.d/java.sh
# echo "export PATH=${JAVA_HOME}/bin:${PATH}" >> /etc/profile.d/java.sh
# chmod +x /etc/profile.d/java.sh
# source /etc/profile.d/java.sh
# echo $JAVA_HOME

###Install the Apache Web Server on CentOS 7
yum update httpd
yum install httpd
firewall-cmd --permanent --add-service=http
firewall-cmd --permanent --add-service=https
firewall-cmd --reload
systemctl start httpd
systemctl status httpd
