@Library('devops_ansible') _

import com.ingageapp.log.*

def log = new log()
def maps = [:]
maps["maven_image"] = "mvn3.3-jdk8"
maps["shellcommands"] = "mvn clean install"
maps["name"] = "base-group-service"
maps["branch"] = "v2007/ci"


pipeline {
    agent none
    stages {
        stage ('Example') {
            steps {
                gitclone(maps)
            }
        }
    }
}
