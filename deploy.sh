#!/bin/bash

case $1 in
start)
pwd

cd /home/admin/java-app-demo
#if [[ -f conf.sh ]]
#then
#    echo "exist conf.sh"
#	sh -x conf.sh
##fi
confd -onetime -confdir ./ -config-file java-app-demo.conf.toml -backend redis -node 192.168.0.173:6379


cd /home/admin/java-app-demo
nohup java -jar java-maven-demo-0.0.1.jar &
echo $! > pid
;;
stop)
pid=`cat pid`
ps aux | grep -v grep  | grep java-maven-demo-0.0.1.jar
if [ $? == 0 ];then
kill -9 $pid
fi
echo "no run"
#rm -rf /home/admin/java-app-demo

;;
*)
  echo "Usage ${0} start or stop"
  ;;
esac
