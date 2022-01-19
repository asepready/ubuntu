# Install MongoDB Community Edition
## 1. Import the public key used by the package management system.
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -

## 2. Create a list file for MongoDB

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/5.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list

## 3. Reload local package database
sudo apt-get update

## 4. Install the MongoDB packages
sudo apt-get install -y mongodb-org
