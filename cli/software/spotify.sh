# You will first need to configure our debian repository:

curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

# Then you can install the Spotify client:
apt update && apt install spotify-client -y

# Remove Sublime
#apt remove --autoremove spotify-client