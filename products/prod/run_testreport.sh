#!/bin/bash

# MAINTAINER Justin S. Campbell Campbelljustin989@gmail.com
# Description: This shell script executes the 'testreport' executable and writes 
# the standard output and error output to text files

cd '/MITgcm/verification'
mkdir '/output'
source testreport > /output/testreport_out.txt 2>/output/test_report_err.txt

