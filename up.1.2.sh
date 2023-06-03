#!/bin/bash
cd /usr/bin/
rm -rf trl
cd
mkdir -p /root/back
cd /root/back
wget -q https://github.com/jsjsjsjsjsjsjsjsjsjsjsjs/api/raw/main/mekk.zip

unzip mekk.zip
mv newapi backend
chmod +x *
mv trl /usr/bin/
mv backend /usr/bin/
sed -i -e 's/\r$//' /usr/bin/trl
cd
rm -rf /root/back

systemctl restart backend
