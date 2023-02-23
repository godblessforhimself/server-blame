# server-blame
用它在服务器宕机的时候让你不背(背)黑锅！！！

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

# 自动化
```
git clone
bash install.sh
```
