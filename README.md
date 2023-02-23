# server-blame
record top cpu &amp; memory process every 10 minutes 


# edit crontab, every 10 minutes
```
crontab -e
* * * * * /path/to/script.sh
```
# edit cron, every minute
```
crontab -e
* * * * * /path/to/script.sh
```
# edit other user's cron
```
crontab -u username -e
* * * * * /path/to/script.sh
```
