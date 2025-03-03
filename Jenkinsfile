pipeline {
     agent {
          docker {
               image 'maven:3.9-amazoncorretto-21'  
               args '-p 33333:8090' 
          }
     }
     environment {
          HOME = '.'
     }
     stages {
          stage('Source') {
               steps {
                    git branch: 'main',
                        url: 'https://github.com/ladyusa/wisdom-book.git'
               }
          }
          stage('Test') {
               steps {
                    sh 'mvn test'
               }
          }
          stage('Build') {
               steps {
                    sh 'mvn package -DskipTests'
               }
          }
          stage('Deploy') {
               steps {
                    sh 'java -jar ./target/book-1.0.jar'
               }
          }
     }
}
