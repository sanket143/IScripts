cd /tmp
wget https://downloads.mongodb.com/compass/mongodb-compass-1.14.5.x86_64.rpm
dnf install ./mongodb-compass-1.14.5.x86_64.rpm
curl -S https://raw.githubusercontent.com/sanket143/IScripts/master/mongodb/install_mongodb-shell.repo > /etc/yum.repos.d/mongodb.repo
dnf install mongodb-org-shell
