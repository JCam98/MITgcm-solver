# Pull latest image of CentOS7 from Docker Image Registry
FROM centos:7

# Author
MAINTAINER Justin S. Campbell <Campbelljustin989@gmail.com>

# Enable installation of OpenHPC repository
#RUN yum install http://build.openhpc.community/OpenHPC:/1.3/CentOS_7/x86_64/ohpc-release-1.3-1.el7.x86_64.rpm

# Install distribution packages 
RUN yum -y install make which git slurm

# Install MITgcm repository 
RUN git clone https://github.com/MITgcm/MITgcm.git

# Enable installation of OpenHPC repository
#RUN rpm -i https://github.com/openhpc/ohpc/releases/download/v1.3GA/ohpc-release-1.3-1.el7.x86_64.rpm

# Install packages from OpenHPC
RUN yum -y install ohpc-autotools valgrind-ohpc gnu8-compilers-ohpc gsl-gnu8-ohpc openmpi3-gnu8-ohpc lmod-defaults-gn8-openmpi3-ohpc examples-ohpc


