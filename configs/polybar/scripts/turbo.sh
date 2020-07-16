#! /bin/bash

info (){
sudo OpenCorsairLink.elf --device 0 
}

turbo (){
sudo OpenCorsairLink.elf --device 0 --fan channel=0,mode=5
sudo OpenCorsairLink.elf --device 0 --fan channel=1,mode=5
sudo OpenCorsairLink.elf --device 0 --pump mode=5
}

balanced(){
sudo OpenCorsairLink.elf --device 0 --fan channel=0,mode=4
sudo OpenCorsairLink.elf --device 0 --fan channel=1,mode=4
sudo OpenCorsairLink.elf --device 0 --pump mode=4
}

quiet(){
sudo OpenCorsairLink.elf --device 0 --fan channel=0,mode=3
sudo OpenCorsairLink.elf --device 0 --fan channel=1,mode=3
sudo OpenCorsairLink.elf --device 0 --pump mode=3
}

if [ $1 == "turbo" ]
	then
		turbo
elif [ $1 == "balanced" ]
	then
		balanced
elif [ $1 == "quiet" ]
	then
		quiet
elif [ $1 == "info" ]
	then 
		info
else 
		echo "Invalid option"
fi
