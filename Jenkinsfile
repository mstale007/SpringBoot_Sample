pipeline {
    agent any

    stages {
        stage('Package to .jar') {
            steps {
                echo 'Starting.. Running ${BUILD_ID} on ${JENKINS_URL}'
                sh 'mvn package'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'mvn test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'mvn deploy'
            }
        }
    }
    post{
        always{
            echo "Done with everything!"
            //mail bcc: '', body: 'Yo Dawg!', cc: '', from: '', replyTo: '', subject: 'Test Mail Jenkins #01', to: 'mstale20@gmail.com'
        }
    }
}
