# server-blame
record top cpu &amp; memory process every 10 minutes 


# edit crontab, every 10 minutes
```
crontab -e
*/10 * * * * bash /path/to/script.sh
```
# edit cron, every minute
```
crontab -e
* * * * * bash /path/to/script.sh
```
# edit other user's cron
```
crontab -u username -e
* * * * * bash /path/to/script.sh
```
