case "Discord-Unstable" in intalled.ri)
echo "This repo is installed"
;;
*)
echo "Getting Repo..."
echo "Adding Repo..."
# Beta repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/javinator9889-ppa-keyring.gpg] https://ppa.javinator9889.com public-beta main" | sudo tee /etc/apt/sources.list.d/javinator9889-ppa.list

echo "Up-Date"
sudo apt-get update
echo "Discord-Unstable" >> installed.ri
echo "To install, enter this command: sudo apt install discord-ptb"
;;
esac
