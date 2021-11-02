case "JetBrains" in intalled.ri)
echo "This repo is installed"
;;
*)
echo "Getting Repo..."
curl -s https://s3.eu-central-1.amazonaws.com/jetbrains-ppa/0xA6E8698A.pub.asc | gpg --dearmor | sudo tee /usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg > /dev/null
echo "Adding Repo..."
echo "deb [signed-by=/usr/share/keyrings/jetbrains-ppa-archive-keyring.gpg] http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com focal main" | sudo tee /etc/apt/sources.list.d/jetbrains-ppa.list > /dev/null
echo "Up-Date"
sudo apt-get update
echo "JetBrains" >> installed.ri
echo "This repo contains packages like this:"

echo "CLion - clion
    DataGrip - datagrip
    GoLand - goland
    IntelliJ IDEA Community - intellij-idea-community
    IntelliJ IDEA Ultimate - intellij-idea-ultimate
    PhpStorm - phpstorm
    PyCharm Community - pycharm-community
    PyCharm Education - pycharm-education
    PyCharm Professional - pycharm-professional
    Rider - rider
    RubyMine - rubymine
    WebStorm - webstorm
"
echo "To install, enter this command: sudo apt install <package name>"
;;
esac
