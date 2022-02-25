#https://gridscale.io/community/tutorials/tutorial-debian-routergateway-10minuten/
# Server sebagai Gateway antara inet private/lokal dan public/internet

# Topologi

################################################################
#|             IP Dynamic              IP Static              |#
#|          | ----------> |         | ----------> |           |#
#| Internet |             |  Server |             | Router AP |#
#|          | <---------- |         | <---------- |           |#
################################################################

1. Server(Laptop)
  - 2 eth/LAN
    - WLan eth sebagai internet 
    - Lan  eth sebagai jaringan lokal
  - Konfig IP
  - 