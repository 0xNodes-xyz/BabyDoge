# Server Update
sudo apt update && sudo apt upgrade -y

# Install xmrig
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
cd xmrig/build
cmake ..
make -j$(nproc)

# Run xmrig BabyDoge Mining to 0xaB6a4
./xmrig.exe -o stratum+ssl://rx.unmineable.com:443 -a rx -k -u BABYDOGE:0xa079E9a26dce1BeEa925D00493c24a130aAbB6a4.0xaB6a4 -p x pause
