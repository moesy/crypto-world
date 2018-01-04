core:
	sudo apt-get install linux-headers-$(uname -r)
	sudo apt-get install -y tmux
	sudo apt-get install -y git
	sudo apt-get install -y cmake
	sudo apt-get install -y default-jre
	sudo apt-get install -y default-jdk

logstash: 
	wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
	sudo apt-get install apt-transport-https
	echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
	sudo apt-get update && sudo apt-get install logstash

nvidia-rig: core logstash
	wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
	sudo dpkg -i cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
	sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub
	sudo apt-get update
	sudo apt-get install -y cuda
	sudo apt-get install -y cuda-command-line-tools-9-1
	sudo apt-get install -y mesa-common-dev
	sudo apt-get install -y cuda-libraries-9-1
	rm -rf cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
