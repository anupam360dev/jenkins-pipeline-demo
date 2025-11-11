pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "🔧 Building the project..."
            }
        }

        stage('Test') {
            steps {
                echo "🧪 Running tests..."
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    echo "🐳 Building Docker image..."
                    sh 'docker build -t anupam360/jenkins-demo:latest .'
                }
            }
        }

        stage('Deploy') {
            steps {
                echo "🚀 Deploying the application..."
            }
        }
    }
}
