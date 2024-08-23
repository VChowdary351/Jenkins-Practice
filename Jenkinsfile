pipeline {
    agent any
    
    stages {
        stage('cloning') {
            steps {
                echo 'cloning an App from git, when code changes webhook makes a call to run pipeline'
                echo 'trigger webhook when code has changed'
            }
        }
        stage('scan') {
            steps {
                echo 'scanning an Application with sonar'
            }
        }
        stage('build') {
            steps {
                echo 'Building an Application'
                sh '''
                 ls -al
                 pwd
                 echo "hello jenkins"
                '''
            }
        }
        stage('ImageScan') {
            steps {
                echo 'Image scanning with trivy'
            }
        }
        stage('test') {
            steps {
                echo 'Testing'
            }
        }
        stage('deploy') {
            steps {
                echo 'Deployment'
                //error 'deployment is failed'
            }
        }
    }
    post{
        always{
            echo 'i will always run whether job is success or not'
        }
        success{
            echo 'i will run only when job is success'
        }
        failure{
            echo 'i will run when is failed '
        }
    }
}