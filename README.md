# server-blame
## 用它在服务器宕机的时候让你不背(背)黑锅！！！

record top cpu &amp; memory process

# 快速使用
```
git clone
# 修改install.sh里的cron表达式。默认15m
bash install.sh
```

# edit crontab, every 10 minutes
```
crontab -e
*/10 * * * * bash /path/to/script.sh
```

# edit other user's cron
```
crontab -u username -e
* * * * * bash /path/to/script.sh
```
