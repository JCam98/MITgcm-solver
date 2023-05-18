# Pull latest image of CentOS7 from Docker Image Registry
FROM centos:7

# Author
MAINTAINER Justin S. Campbell <Campbelljustin989@gmail.com>

# Enable installation of OpenHPC repository
RUN yum install -y http://build.openhpc.community/OpenHPC:/1.3/CentOS_7/x86_64/ohpc-release-1.3-1.el7.x86_64.rpm

# Install distribution packages and developer tools
RUN yum -y install which-2.20 git-1.8.3.1 make-3.82 vim

# Install GNU Compilers 
RUN yum -y install gcc-4.8.5 gcc-gfortran-4.8.5
#RUN yum -y install gnu-7.2.0

# Install NetCDF libraries 
#RUN yum makecache
RUN yum -y install netcdf netcdf-fortran-4.4.4

# Install OpenMPI libraries
#RUN yum -y install openmpi-1.10.7

# Install C library
#RUN yum -y install c7

# Install MITgcm repository 
RUN git clone https://github.com/MITgcm/MITgcm.git

# Copy files from docker development environment into docker container
RUN mkdir code
COPY run_ver_exp_ser.bash run_ver_exp_par.bash code/
ADD optfiles /optfiles

# Grant end user permissions to read and execute scripts for verification experiment and
# add scripts to environment path
RUN chmod +rx /code/run_ver_exp_ser.bash /code/run_ver_exp_par.bash
ENV PATH "/code:$PATH"

