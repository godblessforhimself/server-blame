BASEDIR=$(dirname "$0")
task_list=$(crontab -l)
task="* * * * * bash ${BASEDIR}/measure-load.sh"
if echo "${task_list}" | grep ${task}; then
    echo "${task} exist";
else
    echo "$task_list" && echo $task | crontab -
fi
