pipeline {
  agent any
  stages {
    stage('build ubuntu') {
      steps {
        echo 'Build vagrant base boxes ubuntu-18.04'
        sh 'pwd'
      }
    }
    stage('build subboxes') {
      steps {
        echo 'Build vagrant base boxes'
      }
    }
    stage('cleanup') {
      steps {
        echo 'Clean workspace'
        cleanWs(deleteDirs: true)
      }
    }
  }
}
