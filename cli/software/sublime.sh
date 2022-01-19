# Step 1: Update System Packages
apt update
# apt upgrade

# Step 2: Add Sublime Text GPG key
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -

# Step 3: Add Sublime Text Repository
apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list

# Step 4: Installing Sublime Text on Ubuntu 20.04 / Debian 10|11
apt update && apt install sublime-text -y

# Remove Sublime
#apt remove --autoremove sublime-text