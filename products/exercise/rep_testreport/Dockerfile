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

#Install Intel Compilers
#RUN yum -y install icc-18.0.0 icc-ifort-18.0.0

# Install OpenHPC Meta-packages
#RUN yum -y install ohpc-autotools ohpc-base ohpc-base-compute ohpc-intel-runtimes ohpc-intel-serial-libs ohpc-slurm-client ohpc-slurm-server

# Install OpenHPC Administrative Tools

# Install OpenHPC Provisioning Tools

# Install OpenHPC Resource Management Tools
#RUN yum -y install slurm-devel-ohpc slurm-sview-ohpc slurm-contribs-ohpc slurm-ohpc slurm-slurmd-ohpc slurm-slurmetld-ohpc slurm-slurmdbd-ohpc 

# Install OpenHPC Compiler Families
#RUN yum -y install gnu-compilers-ohpc intel-compilers-devel-ohpc llvm4-compilers-ohpc

# Install OpenHPC MPI Families
#RUN yum -y install intel-mpi-devel-ohpc mpich-gnu-ohpc openmpi-intel-ohpc openmpi-gnu-ohpc 

# Install OpenHPC Development Tools
#RUN yum -y install automake-ohpc autoconf-ohhhpc cmake-ohpc libtool-ohpc 

# Install Slurm Scheduling Manager and Dependencies

# Install MPI libraries and Dependencies

# Install I/O libraries

# Install MITgcm repository 
RUN git clone https://github.com/MITgcm/MITgcm.git

# Enable installation of OpenHPC repository
#RUN rpm -i https://github.com/openhpc/ohpc/releases/download/v1.3GA/ohpc-release-1.3-1.el7.x86_64.rpm

# Install packages from OpenHPC
#RUN yum -y install ohpc-autotools valgrind-ohpc gnu8-compilers-ohpc gsl-gnu8-ohpc openmpi3-gnu8-ohpc lmod-defaults-gn8-openmpi3-ohpc examples-ohpc

# Copy files from docker development environment into docker container
COPY run_testreport.sh /code/run_testreport.sh
ADD optfiles /code/optfiles

# Run testreport executable and write standard output and error to files
RUN chmod +rx /code/run_testreport.sh
ENV PATH "/code:$PATH"
RUN ./code/run_testreport.sh

