#!/bin/bash

echo "Downloading Burp Suite - Professional"
wget "https://portswigger-cdn.net/burp/releases/download?product=pro&version=2022.3.9&type=Linux" -O burpsuite_pro.sh
chmod +x burpsuite_pro.sh
./burpsuite_pro.sh -c -y


echo "Complete!"

echo "Downloading Burp Suite - Community"
wget "https://portswigger-cdn.net/burp/releases/download?product=community&version=2022.3.9&type=Linux" -O burpsuite_community.sh
chmod +x burpsuite_community.sh
echo "Complete!"

echo "Downloading MobSF"
git clone "https://github.com/MobSF/Mobile-Security-Framework-MobSF.git"
echo "Complete!"

echo "Downloading Android Studio"
wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.15/android-studio-2021.2.1.15-linux.tar.gz -O Android-Studio.tar.gz
tar -xvzf Android-Studio.tar.gz

echo "Complete!"



echo "Build Script finished, preparing to be captured into golden image..."
