#!/bin/bash
apt update;
apt-get install python3 -y;
apt-get install python3-pip -y;
python3 -m pip install flask
pip3 install pyarmor


cd /usr/bin/
wget -q https://github.com/jsjsjsjsjsjsjsjsjsjsjsjs/api/raw/main/ft.zip
unzip ft.zip
rm -rf ft.zip

cd

cat >/etc/systemd/system/backend.service << EOF
[Unit]
Description=My Project
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 /usr/bin/ft/ft.py 0.0.0.0
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart backend
systemctl enable backend
