case "OpenShot" in intalled.ri)
echo "This repo is installed"
;;
*)
echo "Getting Repo..."
echo "Adding Repo..."
sudo add-apt-repository ppa:openshot.developers/ppa
echo "Up-Date"
sudo apt-get update
echo "OpenShot" >> installed.ri
echo "To install, enter this command: sudo apt install openshot"
;;
esac
