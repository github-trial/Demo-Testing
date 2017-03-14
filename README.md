Docker Containers for installing Python 2.7 , MongoDB - any version , Apache tomcat 7 - running on port 8080 are written in 3 separete directories,
If needed these file can be merged as one single image to run as a a signle container.

## Steps To Push Dockerfile 
- Login to docker hub.    --> https://hub.docker.com
Username: abcdefgh
Password: ********

- After Logging in create a repository where you would like to push your Docker container in.
Username/Repo_name      eg: abcdefgh/Python (where Python is the repo which is craeted to push Dockerfile for installing Python 2.7)

Then from  the machine where you are creating a Docker container create a file with name "Dockerfile" (strictly follow this name : Dockerfile)

Enter the contents in the Dockerfile that needs to be installed into the machine when we run the container.
Once the Dockerfile is ready we need to build and push the Dockerfile into the Repositry that we created at the start.
The steps to build and push the Dockerfile are as follows:

--- docker login

Username: abcdefgh
Password: *******

--- sudo docker build -t Username/Repo_name:latest .     
   (where latest is a tag and "." is for current directory from where we are pushing the Dockerfile)
Here when we build the Dockerfile we get to know if there are any dependency for installing, if the build is successfull we are good to push and automate 
our Docker container.

--- sudo docker push Username/Repo_name
