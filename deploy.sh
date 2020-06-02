#!/bin/bash 

case $1 in 
start) 
pwd 

cd /home/admin/java-app-demo
if [[ -d conf.sh ]]
then 
    echo "exist conf.sh"
	sh conf.sh 
fi

cd /home/admin/java-app-demo
nohup java -jar java-maven-demo-0.0.1.jar &
echo $! > pid  
;;
stop)
pid=`cat pid`
kill -9 $pid 
rm -rf /home/admin/java-app-demo

;;
*)
  echo "Usage ${0} start or stop"
  ;;
esac
