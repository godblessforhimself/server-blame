BASEDIR="$( cd "$( dirname "$0" )" && pwd )"
task_list="$(crontab -l)"
task="* * * * * bash ${BASEDIR}/measure-load.sh"
if (echo "${task_list}" | grep "${task}" 1>/dev/null); then
    echo "exist"
else
    (echo "${task_list}" && echo "${task}") | crontab -
fi
