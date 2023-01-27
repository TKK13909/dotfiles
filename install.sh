echo Which user would you like to install this to? 
read user

echo Copying files to /home/$user/

echo Copying rc files
cp .bashrc .vimrc -v /home/$user/

echo Copying .config folder
cp .config -rv /home/$user/ 

echo Copying .wallpapers folder
cp .wallpapers -rv /home/$user/

echo Copying .welcome folder
cp .welcome -rv /home/$user/