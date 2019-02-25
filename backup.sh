{ cd /home/backup/hourly && \
rsync -ptvr --delete user@target-ip/var/www/mysite.com.br/public_html last ; \
cd last && \
find | cpio -dplm ../new && \
cd - && \
mv last `date +%Y-%m-%d.%H:%M` && \
mv new last
/bin/bash /home/backup/scripts/delete.sh ;}
