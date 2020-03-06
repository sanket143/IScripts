curl -S https://raw.githubusercontent.com/sanket143/IScripts/master/mongodb/install_mongodb-shell.repo > /etc/yum.repos.d/mongodb.repo
dnf install -y mongodb-org-shell
wget -c https://downloads.mongodb.com/compass/mongodb-compass-1.14.5.x86_64.rpm
dnf install -y ./mongodb-compass-1.14.5.x86_64.rpm
