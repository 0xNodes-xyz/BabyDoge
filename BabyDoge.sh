# Server Update

sudo apt update && sudo apt upgrade -y

# Install xmrig

sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
cd ~/
screen -S BabyDoge
cd xmrig/build

# Run xmrig BabyDoge Mining to 0xaB6a4

./xmrig -o stratum+ssl://rx.unmineable.com:443 -a rx -k -u BABYDOGE:0xa079E9a26dce1BeEa925D00493c24a130aAbB6a4.0xaB6a4 -p x pause

#or

./xmrig -o rx.unmineable.com:3333 -a rx -k -u BABYDOGE:0xa079E9a26dce1BeEa925D00493c24a130aAbB6a4.0xaB6a4 -p x pause

#or

./xmrig -o rx.unmineable.com:13333 -a rx -k -u BABYDOGE:0xa079E9a26dce1BeEa925D00493c24a130aAbB6a4.0xaB6a4 -p x pause
