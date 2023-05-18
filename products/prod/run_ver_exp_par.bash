#!/bin/bash

# MAINTAINER Justin S. Campbell Campbelljustin989@gmail.com
# Description: This shell script builds, and runs a model verification experiment
# from the 'c66g' checkpoint of the MITgcm repository in parallel without MPI support to test the behavior of building and running lightweight MITgcm model problems in a containerized environment.

cd '/MITgcm/verification/INSERTEXPNAMEHERE/build'

# Generate Makefile to specify compiler and optimization options along with file dependencies
# from optfile
../../../tools/genmake2 -mods ../code -optfile </PATH/TO/OPTFILE>

# Generate the dependencies for the Makefile 
make depend

# Compile model problem code into an executable 'mitgcmuv' using two CPU cores 
make -j 2

# Run the model in parallel using two CPU cores
cd ../run
ln -s ../input/* .
cp ../build/mitgcmuv .
mkdir /output
./mitgcmuv -j 2 > /output/std_output_par.txt 2>err_output_par.txt


