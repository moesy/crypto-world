core:
	sudo apt-get install linux-headers-$(uname -r)
	sudo apt-get install -y tmux
	sudo apt-get install -y git
	sudo apt-get install -y cmake
	sudo apt-get install -y default-jre default-jdk
	sudo apt-get install -y libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
	sudo apt-get install -y libffi-dev python-dev

logstash: 
	wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
	sudo apt-get update && sudo apt-get install logstash

rig-nvidia: core logstash
	wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
	sudo dpkg -i cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
	sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
	sudo apt-get update
	sudo apt-get install -y cuda
	sudo apt-get install -y cuda-command-line-tools-9-1
	sudo apt-get install -y mesa-common-dev
	sudo apt-get install -y cuda-libraries-9-1
	rm -rf cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
	echo "PLease reboot gracefully for cuda to activate"
	echo "upon reboot please run nvidia-smi to confirm installation"

miner-ewbf:
	rm -rf /opt/crypto-world/miners/ewbf
	mkdir -p /opt/crypto-world/miners/ewbf
	wget --directory-prefix=/opt/crypto-world/miners/ewbf https://github.com/poolgold/ewbf-miner-btg-edition/releases/download/v0.3.4b-BTG/BTG-nVidia.miner.0.3.4b.Linux.Bin.zip
	unzip BTG-nVidia.miner.0.3.4b.Linux.Bin.zip -d /opt/crypto-world/miners/ewbf
	mv /opt/crypto-world/miners/ewbf/BTG-nVidia.miner.0.3.4b.Linux.Bin/* /opt/crypto-world/miners/ewbf
	rm -rf /opt/crypto-world/miners/ewbf/BTG-nVidia.miner.0.3.4b.Linux.Bin/
	mv /opt/crypto-world/miners/ewbf/miner /opt/crypto-world/bin/miner
	

miner-ethminer:
	rm -rf /opt/crypto-world/miners/ethminer
	git clone https://github.com/ethereum-mining/ethminer.git /opt/crypto-world/miners/ethminer
	mkdir -p /opt/crypto-world/miners/ethminer/build
	cd /opt/crypto-world/miners/ethminer/build; cmake -D CUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-9.1 -DETHASHCL=ON -DETHASHCUDA=ON ..
	cd /opt/crypto-world/miners/ethminer/build; cmake --build .
	cd /opt/crypto-world/miners/ethminer/build; sudo make install

miner-nheqminer:
	rm -rf /opt/crypto-world/miners/nheqminer
	git clone https://github.com/nicehash/nheqminer.git /opt/crypto-world/miners/nheqminer

	cd /opt/crypto-world/miners/nheqminer; make build
	cd /opt/crypto-world/miners/nheqminer/build; cmake ../nheqminer
	cd /opt/crypto-world/miners/nheqminer; make -j $(nproc)

# needs testing
miner-ccminer:
	mkdir -p /opt/crypto-world/miners/bin
	rm -rf /opt/crypto-world/miners/ccminer
	git clone https://github.com/tpruvot/ccminer.git /opt/crypto-world/miners/ccminer
	cd /opt/crypto-world/miners/ccminer; ./autogen.sh
	cd /opt/crypto-world/miners/ccminer; ./configure --with-cuda
	
	# windows
	#wget https://github.com/tpruvot/ccminer/releases/download/2.2.3-tpruvot/ccminer-x64-2.2.3-cuda9.7z --directory-prefix=/opt/crypto-world/miners/bin
	#cd /opt/crypto-world/miners/bin; 7z x ccminer-x64-2.2.3-cuda9.7z
	#cd cd /opt/crypto-world/miners/bin; rm -rf ccminer-x64-2.2.3-cuda9.7z

