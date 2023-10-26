sudo apt update
sudo apt install python3-pip

pip install poetry

mkdir lm
cd lm
git clone https://github.com/kpu/kenlm
cd kenlm
mkdir build
cd build
sudo cmake ..
sudo make -j 4
sudo make install

cd ..
cd ..
mkdir models
cd models
wget https://www.openslr.org/resources/11/3-gram.arpa.gz
gzip -d 3-gram.arpa.gz
