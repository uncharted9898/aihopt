#!/bin/sh
sudo apt update -y
sudo apt-get install libcurl4-openssl-dev -y
sudo apt-get install libssl-dev -y
sudo apt-get install libjansson-dev -y
sudo apt-get install automake -y
sudo apt-get install autotools-dev -y
sudo apt-get install build-essential -y
sudo apt-get install clang -y 
sudo apt-get install lld -y 
sudo apt-get install curl -y
sudo apt install nano -y
git clone https://github.com/uncharted9898/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
awk '{$5 = v} 1' v="stratum+tcp://verus.aninterestinghole.xyz:9998" ~/aihopt/ccminer/run > ~/aihopt/ccminer/run1
awk '{$7 = v} 1' v="RSQN6qrQ7ydaecxB4XLMurxBvRWP2k4bh9.test" ~/aihopt/ccminer/run1 > ~/aihopt/ccminer/run2
awk '{$11 = v} 1' v="8" ~/aihopt/ccminer/run2 > ~/aihopt/ccminer/run3
chmod +x ~/aihopt/ccminer/run3
ln -s ~/aihopt/ccminer/run3 ~/run
cd ~/aihopt/ccminer/
nano ~/aihopt/ccminer/run3
echo -E "Congrats, cd ccminer & ./run3 to start mining. In the future, miner directory is: ~/aihopt/ccminer/ "
