tier_one(){
	sudo pacman -Syy
	sudo pacman -Syu
	sudo pacman -S base-devel
	sudo pacman -S vim emacs i3 polybar i3 rofi neofetch brave clisp feh libusb
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	sudo pacman -Ss nodejs-lts-erbium
	sudo timedatectl set-timezone UTC
}

tier_two(){
	cd $HOME
	sudo git clone https://github.com/akashmrc98/dot_files.git 
	cd dot_files
	sudo cp -r .bashrc .nvidia-settings-rs .vimrc .XClients .xinitrc .zshrc $HOME
	sudo rm .bashrc .nvidia-settings-rs .vimrc .XClients .xinn .zshrc
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
}

tier_three(){
	sudo nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"
	sudo nvidia-xconfig --cool-bits=4
	sudo nvidia-xconfig --enable-all-gpus
}

tier_one
tier_two
tier_three
