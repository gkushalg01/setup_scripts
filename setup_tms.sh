#! /bin/bash

# moving to downloads
cd /home/$USER/Downloads

# from apt
sudo apt update && sudo apt-upgrade -y
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

sudo apt install redis libuv1-dev build-essential postgresql-server-dev-all nodejs npm -y 

# postgres 12
sudo apt -y install vim bash-completion wget
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list
sudo apt update
sudo apt -y install postgresql-12 postgresql-client-12


# from git repos

# installing hiredis
git clone https://github.com/redis/hiredis.git
cd hiredis
make
sudo make install
cd ..

# redis-plus plus
git clone https://github.com/sewenew/redis-plus-plus
cd redis-plus-plus
mkdir build
cd build
cmake -DREDIS_PLUS_PLUS_CXX_STANDARD=11 ..
make
sudo make install
cd ../..

# libpqxx
git clone https://github.com/jtv/libpqxx/ --branch 6.4
cd libpqxx
cd cmake
cmake ..
make
sudo make install
cd ..

# spdlog
git clone https://github.com/gabime/spdlog
cd spdlog/
cd cmake/
cmake ..
make
sudo make install
cd

# Ld library
echo LD_LIBRARY_PATH+=:/usr/local/lib:/lib >> ~/.bashrc  

# source devel - assuming ats_tms is in home dir
echo "[[ -f `pwd`/src/ats_tms_service/system_config/setup.bash ]] && source `pwd`/src/ats_tms_service/system_config/setup.bash" >> ~/.bashrc

sudo ln -s /usr/local/lib/libpqxx.so /usr/lib/libpqxx.so
sudo ldconfig

. ~/.bashrc



