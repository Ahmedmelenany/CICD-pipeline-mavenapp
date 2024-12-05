pipeline {
    agent any 
    
    stages {
        stage('Build') {
            steps {
                sh """
                        ./jenkins/build/build.sh mvn -B -DskipTests clean package
                        ./jenkins/build/image.sh
                   """
            }
        }
        stage('Test') {
            steps {
                sh """
                        ./jenkins/test/test.sh mvn test
                   """
            }
        }
        stage('Push') {
            steps {
                sh """
                        ./jenkins/push/push.sh
                   """
            }
        }
        stage('Deploy') {
            steps {
                sh """
                        ./jenkins/deploy/deploy.sh
                   """
            }
        }
        
    }
    
    
    
}
