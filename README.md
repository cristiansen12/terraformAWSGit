# terraformAWSGit

This project offers a docker image good for development of terraform scripts for cloud platforms such as:
    
    * Amazon Web Services Cloud

# Project files
 -  Dockerfile - file which creates an image originated from alpine image with the following tools (installed with all their dependencies):
            
            *   terraform version 0.12.12 
            *   golang version latest
            *   git version latest
            *   aws-cli version latest
 
 - create_container.sh - file which builds image and runs a container with the image previously created
 
# Instructions
 If you want to mount a folder from host machine into docker image, use the following command to map the folder to "/usr/work" from docker container:
   
   ``` docker run -d -it --name <container_name> --mount type=bind,source=<host_machine_folder>,target=/usr/work <image_name> ```