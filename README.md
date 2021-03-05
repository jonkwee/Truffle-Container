# Truffle in a Container

## How to Use
Creates a CentOS docker container with the latest LTS of nodejs/npm. Also includes [truffle](https://www.trufflesuite.com/). 
### Notes
- Run the [startup.sh](startup.sh) script to create the image and start up the container. (Tested when running on Git Bash)
- A folder dev_env will be created at the same level as the Dockerfile. This folder should contain all the files/directories that require truffle as it is mounted onto the container.
- The main purpose of this container is to allow a separate environment for truffle based development.

### To Be Added
- Need to expose ports once app is created and listening on a specific port.
