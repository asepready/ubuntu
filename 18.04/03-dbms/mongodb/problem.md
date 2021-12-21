## Check keberhasilan instalasi MongoDb, ketik perintah di terminal:
#### 1. Dalam keadaan start dan check
```
sudo service mongod status
```
tampil berikut:
```terminal
● mongod.service - MongoDB Database Server
   Loaded: loaded (/lib/systemd/system/mongod.service; enabled; vendor preset: enabled)
   Active: failed (Result: core-dump) since Tue 2021-12-21 18:52:01 WIB; 5min ago
     Docs: https://docs.mongodb.org/manual
  Process: 1495 ExecStart=/usr/bin/mongod --config /etc/mongod.conf (code=dumped, signal=ILL)
 Main PID: 1495 (code=dumped, signal=ILL)
```
#### 2. bisa dicoba dengan solusi berikut:
```terminal
sudo rm -r /var/lib/mongodb
sudo mkdir -p /var/lib/mongodb/
sudo chown -R mongodb:mongodb /var/lib/mongodb/
sudo mkdir -p /var/log/mongodb/
sudo chown -R mongodb:mongodb /var/log/mongodb/
sudo systemctl restart mongod
sudo systemctl status mongod
```
Jika masih tampil kayak gini berarti masih gagal dalam install di karenakan tidak support spesifikasi
```terminal
● mongod.service - MongoDB Database Server
   Loaded: loaded (/lib/systemd/system/mongod.service; enabled; vendor preset: enabled)
   Active: failed (Result: core-dump) since Tue 2021-12-21 18:52:01 WIB; 5min ago
     Docs: https://docs.mongodb.org/manual
  Process: 1495 ExecStart=/usr/bin/mongod --config /etc/mongod.conf (code=dumped, signal=ILL)
 Main PID: 1495 (code=dumped, signal=ILL)
```
<br>[Lihat jawaban dari Stackoverflow](https://stackoverflow.com/questions/68392064/error-when-running-mongo-image-docker-entrypoint-sh-line-381/68394912#68394912)
