# Use nmcli
# Show Interface Network
nmcli device status
nmcli connection show

# check wifi
nmcli d wifi list ifname wlp1s0

# connect to wifi
nmcli di wifi connect "WfiName" password YourPassd ifname inth