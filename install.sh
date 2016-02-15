apt-get update
# apt-get dist-upgrade # 太慢 升级 所有包


apt-get intall -y git zsh
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

# pyenv dependencies
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev
# pyenv
curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash
# Anaconda
conda update conda
conda update anaconda
# Scrapy
conda install -y scrapy
# seaborn
conda install -y seaborn
# reboot
reboot
