@Library('devops_ansible') _

import com.ingageapp.log.*

def log = new log()
def maps = [:]
maps["maven_image"] = "mvn3.3-jdk8"
maps["shellcommands"] = "mvn clean install"
maps["name"] = "base-group-service"
maps["branch"] = "ci"

node {
    stage("prepare "){
        log.info("start")
	    
        sh "ls"
	    
        sh "pwd"
    }
	
    gitclone(maps)
    xsy_maven(maps)
	
}
