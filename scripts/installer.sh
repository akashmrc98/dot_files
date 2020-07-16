tier_one(){
	sudo pacman -Syy
	sudo pacman -Syu
	sudo pacman -S base-devel
	sudo pacman -S vim emacs i3 polybar i3 rofi neofetch brave clisp feh
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	sudo pacman -Ss nodejs-lts-erbium
}

tier_two(){
	cd $HOME
	sudo git clone  https://github.com/akashmrc98/dot_files.git
	
}
