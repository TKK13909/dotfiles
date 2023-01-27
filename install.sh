echo Which user would you like to install this to? 
read user

echo Copying rc files
cp .bashrc .vimrc /home/$user/