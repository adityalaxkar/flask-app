node {
    stage('Get Source') {
        // Copy source code from local file system and test
        // for a dockerfile to build the docker image
        git ('https://github.com/adityalaxkar/flask-app.git')
        if (!fileExists("Dockerfile")) {
            error('Dockerfile missing.')
        }
    }
    stage('Build Docker') {
        // build the docker image from the source code using the Build_ID parameter in image name
        sh "sudo docker build -t flask-app ."
    }
    stage("run docker container") {
        sh "sudo docker run -p 5000:5000 --name flask-app -d flask-app"
    }
}
