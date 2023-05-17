# Pull latest image of CentOS7 from Docker Image Registry
FROM centos:7

# Author
MAINTAINER Justin S. Campbell <Campbelljustin989@gmail.com>

# Enable installation of OpenHPC repository
RUN yum install -y http://build.openhpc.community/OpenHPC:/1.3/CentOS_7/x86_64/ohpc-release-1.3-1.el7.x86_64.rpm

# Install distribution packages 
RUN yum -y install which-2.20 git-1.8.3.1 make-3.82

# Install GNU Compilers 
RUN yum -y install gcc-4.8.5 gcc-gfortran-4.8.5

# Install MITgcm repository 
RUN git clone https://github.com/MITgcm/MITgcm.git

# Copy files from docker development environment into docker container
COPY run_testreport.sh /code/run_testreport.sh 

# Grant end user permissions to read and execute script and add to path
RUN chmod +rx /code/run_testreport.sh
ENV PATH "/code:$PATH"

