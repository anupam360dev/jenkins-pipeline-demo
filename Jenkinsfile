pipeline {
    agent any
    environment {
        DOCKERHUB = credentials('dockerhub')
    }

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

        stage('Docker Push') {
            steps {
                script {
                    echo "📦 Pushing image to Docker Hub..."
                    sh 'echo $DOCKERHUB_PSW | docker login -u $DOCKERHUB_USR --password-stdin'
                    sh 'docker push anupam360/jenkins-demo:latest'
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    echo "🚀 Deploying the container..."
                    // Stop any existing container with same name
                    sh 'docker rm -f jenkins-demo-container || true'
                    // Run new container on port 8081
                    sh 'docker run -d --name jenkins-demo-container -p 8081:80 anupam360/jenkins-demo:latest'
                }
            }
        }
    }
}
