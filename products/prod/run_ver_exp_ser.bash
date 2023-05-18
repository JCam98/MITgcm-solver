#!/bin/bash

# MAINTAINER Justin S. Campbell Campbelljustin989@gmail.com
# Description: This shell script builds, and runs a model verification experiment
# from the 'c66g' checkpoint of the MITgcm repository serially without MPI support to test the behavior of building and running lightweight MITgcm model problems in a containerized environment.

# Initialize directories for storing standard and error output for build and run processes
mkdir /output
mkdir /output/make_depend
mkdir /output/make
mkdir /output/run

# Prompt user to input name of verification experiment
echo "Please input verification experiment name: "
read ver_exp
# Change working directory to verification experiment build directory
cd "/MITgcm/verification/""$ver_exp""/build"

# Generate Makefile to specify compiler and optimization options along with file dependencies
# from optfile
../../../tools/genmake2 -mods ../code -optfile /optfiles/linux_amd64_gfortran_sverdrup

# Generate the dependencies for the Makefile 
make depend >/output/make_depend/std_output.txt 2>/output/make_depend/err_output.txt

# Compile model problem code into an executable 'mitgcmuv'
make >/output/make/std_output.txt 2>/output/make/err_output.txt

# Run the model as a single process serially
#cd ../run
#ln -s ../input/* .
#cp ../build/mitgcmuv .
#./mitgcmuv > /output/run/std_output_ser.txt 2>/output/run/err_output_ser.txt


