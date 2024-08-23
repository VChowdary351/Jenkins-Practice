pipeline {
    agent any
     options {
        ansiColor('xterm')
    }
    environment { 
        name = 'chowdary'
    }
    parameters {
        string(name: 'PERSON', defaultValue: 'Mr Jenkins', description: 'Who should I say hello to?')
        text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
        booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
        choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    
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
        stage('params') {
            steps {
                echo "Hello ${params.PERSON}"

                echo "Biography: ${params.BIOGRAPHY}"

                echo "Toggle: ${params.TOGGLE}"

                echo "Choice: ${params.CHOICE}"

                echo "Password: ${params.PASSWORD}"
            }
        }
        stage('input') {
            input {
                message "Should we continue?"
                ok "Yes, we should."
                submitter "alice,bob"
                parameters {
                    string(name: 'PERSON', defaultValue: 'Mr Chowdary', description: 'Who should I say hello to?')
                }
            }
            steps {
                echo "Hello, ${PERSON}, nice to meet you."
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