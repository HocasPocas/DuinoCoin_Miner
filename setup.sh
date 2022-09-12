sudo apt update && sudo apt upgrade -y && sudo apt install curl python3 python3-pip python3-dev -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs/ | sh
source $HOME/.cargo/env
wget https://server.duinocoin.com/fasthash/libducohash.tar.gz
tar -xvf libducohash.tar.gz
cd libducohash
cargo build --release
mv target/release/libducohasher.so .
wget https://raw.githubusercontent.com/revoxhere/duino-coin/master/PC_Miner.py
mkdir 'Duino-Coin PC Miner 3.3'
cd 'Duino-Coin PC Miner 3.3'
wget https://raw.githubusercontent.com/HocasPocas/DuinoCoin_Miner/main/Settings.cfg
cd ..
python3 PC_Miner.py
