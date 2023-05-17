# MITgcm-solver

This repository will provide support for researchers, scientists, and other members of the MITgcm climate science community to build and run models in portable units of software (docker containers). These units of software will effectively reduce time-intensive activities required by the end user such as determining necessary software tools to install, building skill sets in shell scripting and to an extent, navigating Linux environments, and will function as a one-stop-shop for all MITgcm-ECCO workflow tasks.

The release entitled 'beta_rep_testreport0.1' provides support for reproducing the standard and error output of the MITgcm checkpoint c66g 'testreport' executable in the 'MITgcm/verification' directory of the MITgcm checkpoint. To reproduce the results simply follow the procedure below: 

1. Pull down the docker image from DockerHub to a machine with Docker installed by running `docker pull jcam989/mitgcm_solver:beta_rep_testreport0.1`
2. Run a docker container from the image attaching an interactive terminal to the container and start a shell inside the container to interact with its contents by running `docker run -it jcam989/mitgcm_solver:beta_rep_testreport0.1 /bin/bash`
3. Execute shell script to run 'testreport' and write standard and error output to a newly created directory '/output' inside of the container by running `code/run_testreport.sh`
4. Patiently wait for the script to terminate. This can take up to a few hours depending on your compute resources. 
5. Once the script has terminated, the output directory can be written out to the host machine by executing the following steps: 
	a) `exit` to escape the container
	b) `docker ps -a` to output the container ID's of all containers running on host machine
	c) `docker cp <containerID>:/output /host/path/target` to copy the 'output' directory and 
	    its text files from the container with <containerID> to the directory '/host/path/target		on the end user's host machine



