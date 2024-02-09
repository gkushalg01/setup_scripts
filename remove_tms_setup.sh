echo "Removing Redis, Postgres + Removing Files which might be installed due to mistake"
sudo apt remove libpqxx* libredis** libhireds* libspdlog* libuv1-dev redis postgresql-server-dev-all postgresql-12 postgresql-client-12 -y

echo "Removing pqxx"
sudo rm -rf /home/$USER/Downloads/*pqxx*
sudo rm -rf /usr/local/lib/*pqxx*
sudo rm -rf /usr/local/share/doc/*pqxx*
sudo rm -rf /usr/local/include/*pqxx*
sudo rm -rf /usr/local/lib/cmake/*pqxx*

echo "Removing hiredis"
sudo rm -rf /home/$USER/Downloads/*hiredis*
sudo rm -rf /usr/local/include/*hiredis*
sudo rm -rf /usr/local/lib/*hiredis*

echo "Removing redis++"
sudo rm -rf /home/$USER/Downloads/*redis-plus-plus*
sudo rm -rf /usr/local/lib/*redis++*
sudo rm -rf /usr/local/share/cmake/*redis++*
sudo rm -rf /usr/local/include/sw/*redis++*
sudo rm -rf /usr/local/share/cmake/*redis++*/

echo "Removing spdlog"
sudo rm -rf /usr/local/lib/cmake/spdlog/
sudo rm -rf /usr/local/include/spdlog/
sudo rm -rf /usr/local/lib/*spdlog*