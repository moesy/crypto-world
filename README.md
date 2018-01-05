# crypto-world
Standardize common cryptocurrency related tasks

# Turtle Patch
If you have slow internet plan accordingly
-  download the files from the box bellow into a thumbdrive

```
wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-6.1.1-amd64.deb
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_9.1.85-1_amd64.deb
wget https://github.com/poolgold/ewbf-miner-btg-edition/releases/download/v0.3.4b-BTG/BTG-nVidia.miner.0.3.4b.Linux.Bin.zip
```

- move filebeat-6.1.1-amd64.deb to /opt/crypt-world/build/
- move cuda-repo-ubuntu1604_9.1.85-1_amd64.debto /opt/crypt-world/build/
- move BTG-nVidia.miner.0.3.4b.Linux.Bin.zip to /opt/crypto-world/miners/ewbf/
- replace build/makefile with build/makefile_slow 

# supported O.S
- Ubuntu 16.x

# supported coins
- Ethereum
- Hush

# build commands
##### run from the build/ directory
- make rig-nvidia

# Mining Commands
##### run from the mine/ directory
- mike mine-ethereum
- make mine-hush



# Ubuntu Install
```
sudo apt-get install git -y
mkdir -p /opt
sudo chown -R $USER:$USER /opt/
git clone https://github.com/mokio8/crypto-world.git /opt/crypto-world
cd /opt/crypto-world/build
```
