#!/bin/bash
apt update;
apt-get install python3 -y;
apt-get install python3-pip -y;
pip3 install flask


cd /usr/bin/
rm -rf add-wstr
rm -rf add-wsnone
rm -rf add-wsstb
rm -rf add-trl
rm -rf add-trnone
rm -rf add-trstb
rm -rf backend
cd
mkdir -p /root/back
cd /root/back
wget -q https://github.com/jsjsjsjsjsjsjsjsjsjsjsjs/api/blob/main/port6967.zip?raw=true

unzip port6967.zip
mv newapi backend
chmod +x *
mv * /usr/bin/
sed -i -e 's/\r$//' /usr/bin/adtr
sed -i -e 's/\r$//' /usr/bin/addws
sed -i -e 's/\r$//' /usr/bin/trl
sed -i -e 's/\r$//' /usr/bin/trlsh
cd
rm -rf /root/back

cat >/etc/systemd/system/backend.service << EOF
[Unit]
Description=My Project
After=network.target

[Service]
WorkingDirectory=/root
ExecStart=/usr/bin/python3 /usr/bin/backend 0.0.0.0 meki
Restart=always

[Install]
WantedBy=multi-user.target
EOF
systemctl daemon-reload
systemctl restart backend
systemctl enable backend
