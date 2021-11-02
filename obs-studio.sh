case "OBS-Studio" in intalled.ri)
echo "This repo is installed"
;;
*)
echo "Getting Repo..."
echo "Adding Repo..."
sudo add-apt-repository ppa:obsproject/obs-studio
echo "Up-Date"
sudo apt-get update
echo "OBS-Studio" >> installed.ri
echo "To install, enter this command: sudo apt install obs-studio"
;;
esac
