@Library('devops_ansible') _

import com.ingageapp.log.*

def log = new log()
def maps = []
maps["maven_image"] = "mvn3.3-jdk8"
maps["shellcommands"] = "mvn clean install"


node {
    stage("maven 构建"){
        log.info("start")
	xsy_maven(maps)
    }
	
}
