#!/bin/bash

sudo docker stop mydb
sudo docker stop appdb1
sudo docker stop appdb2
sudo docker stop appdb3
sudo docker rm mydb
sudo docker rm appdb1
sudo docker rm appdb2
sudo docker rm appdb3
