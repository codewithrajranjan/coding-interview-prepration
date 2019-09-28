curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash




# to make nvm available to all users
n=$(which node);n=${n%/bin/node}; chmod -R 755 $n/bin/*; sudo cp -r $n/{bin,lib,share} /usr/local
