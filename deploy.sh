#!/bin/bash

case $1 in
start)
pwd

cd /home/admin/java-app-demo
if [[ -f conf.sh ]]
then
    echo "exist conf.sh"
        sh -x conf.sh
fi

nohup java -jar java-maven-demo-0.0.1.jar &
echo $! > pid
;;
stop)
pid=`cat pid`
ps aux | grep -v grep  | grep pid
if [ $? == 0 ];then
kill -9 $pid
fi
#rm -rf /home/admin/java-app-demo

;;
*)
  echo "Usage ${0} start or stop"
  ;;
esac
