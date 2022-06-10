#!/bin/bash

echo "Please execute script as root"

apt-get update -y
apt-get upgrade -y

mkdir /root/tools

echo "Configuring xrdp"
apt-get install xrdp -y
apt-get install xfce4 -y
echo xfce4-session >~/.xsession
service xrdp restart

echo "Downloading Burp Suite - Professional"
wget "https://portswigger-cdn.net/burp/releases/download?product=pro&version=2022.3.9&type=Linux" -O /root/tools/burpsuite_pro.sh
chmod +x /root/tools/burpsuite_pro.sh
printf '\n\n\n\n\n\n' | /root/tools/burpsuite_pro.sh -c
echo "Complete!"

echo "Downloading Burp Suite - Community"
wget "https://portswigger-cdn.net/burp/releases/download?product=community&version=2022.3.9&type=Linux" -O /root/tools/burpsuite_community.sh
chmod +x /root/tools/burpsuite_community.sh
printf '\n\n\n\n' | /root/tools/burpsuite_community.sh -c
echo "Complete!"

echo "Downloading MobSF"
git clone "https://github.com/MobSF/Mobile-Security-Framework-MobSF.git" /root/tools/Mobile-Security-Framework-MobSF
echo "Complete!"

echo "Downloading Android Studio"
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.15/android-studio-2021.2.1.15-linux.tar.gz -O /root/tools/Android-Studio.tar.gz
tar -xvzf Android-Studio.tar.gz
echo "Complete!"

echo "Build Script finished, preparing to be captured into golden image..."

#waagent -deprovision -force
