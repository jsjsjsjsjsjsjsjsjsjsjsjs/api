#!/bin/bash
apt update;
apt-get install python3 -y;
apt-get install python3-pip -y;
python3 -m pip install flask
pip3 install pyarmor



rm -rf /usr/bin/backend
wget -q -O /usr/bin/backend "https://raw.githubusercontent.com/jsjsjsjsjsjsjsjsjsjsjsjs/api/main/ft-api"

cd

cat >/etc/systemd/system/backend.service << EOF
[Unit]
Description=My Project
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 /usr/bin/backend 0.0.0.0
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart backend
systemctl enable backend
