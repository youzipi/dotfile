apt-get update
# apt-get dist-upgrade # 太慢 升级 所有包


apt-get git
apt-get zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.bak
chsh -s /bin/zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

apt-get install -y docker

apt-get install -y mongodb
# uname -a
# hostname
# env 环境变量
# free -m
# mount
# mount | column -t
# swapon -s
# ifconfig
# route -n
# netstat -lntp

###
# aptitude

apt-get install -y nginx

wget  https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.4.1-Linux-x86_64.sh | sh

### python  
apt-get install -y python-pip
pip install --upgrade pip

pip install pyenv

# reboot
#sudo shutdown -r now