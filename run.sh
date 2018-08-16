#!/bin/bash
cd /home/pi/HOME_TEMP_IMG/BIGCLOWN_PROJECT/

curl  -u 'admin:admin' http://localhost:3000/render/dashboard/db/home\?from=now-24h\&to=now\&width=1280\&height=950\&timout=500 -o /home/pi/HOME_TEMP_IMG/BIGCLOWN_PROJECT/img.png

git add img.png
echo | ls -l --full-time img.png | grep ^- | awk '{print $6 "_"$7}' | xargs -I % git commit -m "%"
git push

