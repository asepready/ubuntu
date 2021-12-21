# Install MongoDB Community Edition
## 1. Import the public key used by the package management system.
```terminal
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
```
## 2. Create a list file for MongoDB
```terminal
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
```
## 3. Reload local package database
```terminal
sudo apt-get update
```
## 4. Install the MongoDB packages
```terminal
sudo apt-get install -y mongodb-org
```

```terminal
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-database hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections
```
## 5. Start or Stop service MongoDB
```terminal
sudo systemctl start mongod
```
If you receive an error similar to the following when starting mongod:
"Failed to start mongod.service: Unit mongod.service not found."
```terminal
sudo systemctl daemon-reload
```
Status
```
sudo systemctl status mongod
```
You can optionally ensure that MongoDB will start following a system reboot by issuing the following command:
```
sudo systemctl enable mongod
```

# Uninstall MongoDB Community Edition
## 1. Stop MongoDB
```
sudo service mongod stop
```
## 2. Remove Packages
```
sudo apt-get purge mongodb-org*
```
## 3. Remove Data Directories
```
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb
```