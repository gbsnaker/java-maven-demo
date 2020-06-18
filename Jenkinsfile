@Library('devops_ansible') _

import com.ingageapp.log.*

def log = new log()
def maps = [:]
maps["maven_image"] = "mvn3.3-jdk8"
maps["shellcommands"] = "mvn clean install"
maps["name"] = "base-group-service"
maps["branch"] = "v2007/ci"

node {
    stage("prepare "){
        log.info("start")
	    
        sh "ls"
	    
        sh "pwd"
    }
	
    println "print test env "   
	
    println "${BRANCH}"
    println "${GERRIT_CHANGE_SUBJECT}
    println "${GERRIT_CHANGE_I}"
    gitclone(maps)
    xsy_maven(maps)
	
}
