#!/bin/bash

echo "http_proxy=http://AN008107:XaHQEbaGVzEL7UMts9GJ@10.33.236.151:8000" >> /etc/environment
echo "https_proxy=\$http_proxy" >> /etc/environment

echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo "options ndots:0" >> /etc/resolv.conf