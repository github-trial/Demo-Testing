# Demo-Testing
Docker Containers for installing Python 2.7 , MongoDB - any version , Apache tomcat 7 - running on port 8080 are written in 3 separete directories,
If needed can be merged as one image to run as a a signle container.

#Steps To Push Docker Image

- docker login
  Usename: abcdefgh
  Password: *******

- sudo docker build Username/Reponame:latest .
  Reponame is the one that you have created in the Docke hub
  latest is the 'tag'
  Once the build is successfull we can proceed to push our image into the Docker hub

- sudo docker push Username/Reponame
