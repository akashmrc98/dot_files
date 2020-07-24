tier_one(){
	sudo pacman -Syy
	sudo pacman -Syu
	sudo pacman -S base-devel
	sudo pacman -S vim emacs i3 polybar i3 rofi neofetch brave clisp feh libusb
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	sudo pacman -Ss nodejs-lts-erbium
	sudo timedatectl set-timezone UTC
}

tier_two(){
	cd $HOME
	sudo git clone https://github.com/akashmrc98/dot_files.git 
	cd dot_files
	sudo cp -r .bashrc .vimrc .zshrc $HOME
	sudo rm .bashrc .vimrc .zshrc
	cd configs
	sudo cp -r gtk-3.0 gtk-4.0 i3 polybar MangoHud rofi $HOME/.config
	cd ..
	cd scripts
	mkdir $HOME/.scripts
	cp -r H100i.sh $HOME/.scripts
	cd $HOME
	sudo rm -f configs
	cd $HOME
	git clone --recurse-submodules https://github.com/flightlessmango/MangoHud.git
	cd MangoHud
	./build.sh build
	./build.sh package
	./build.sh install
	cd $HOME 
	cd .ocl
	sudo make
	sudo make install
	cd $HOME
	sudo rm -rf dot_files
}

tier_three(){
	sudo nvidia-xconfig -a --cool-bits=24 -allow-empty-initial-configuration
	sudo npm install -g typescript prettier eslint create-react-app
}

tier_one
tier_two
tier_three
