BASEDIR=$(dirname "$0")
(crontab -l && echo "* * * * * bash ${BASEDIR}/measure-load.sh") | crontab -
