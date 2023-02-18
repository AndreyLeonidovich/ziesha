#!/bin/bash

cd $HOME
sudo systemctl stop ziesha
cd $HOME/bazuka
git pull origin master
cargo update
cargo install --path .
# rm -rf /root/.bazuka #удаляйте базу данных только если нужно!
sudo systemctl restart ziesha
clear
journalctl -n 100 -f -u ziesha | ccze -A