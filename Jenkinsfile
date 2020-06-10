@Library('devops_ansible') _

import com.ingageapp.log.*

def log = new log()
def maps = [:]
maps["maven_image"] = "mvn3.3-jdk8"
maps["shellcommands"] = "mvn clean install"


node {
    stage("prepare "){
        log.info("start")
	    
        sh "ls"
	    
        sh "pwd"
    }
	
    xsy_maven(maps)
	
}
