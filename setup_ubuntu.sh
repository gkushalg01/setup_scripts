sudo apt update && sudo apt upgrade -y
sudo apt install cmake openssh-server net-tools curl snapd ubuntu-restricted-extras gnome-tweak-tool synaptic vlc shutter open-vm-tools-desktop -y
#skype
wget https://repo.skype.com/latest/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt-get install -f
#chrome 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
#vscode
sudo snap install --classic code
#open-ssh
sudo systemctl enable ssh --now
sudo systemctl start ssh