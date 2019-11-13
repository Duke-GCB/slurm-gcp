#!/usr/bin/env bash

sudo yum install -y python-virtualenv

# Create a virtualenv
virtualenv env
source env/bin/activate
pip install --upgrade pip

# Clone repos for workflow and toil
git clone https://github.com/dleehr/sleep-echo.git
git clone https://github.com/bespin-workflows/exomeseq-gatk4.git
git clone https://github.com/DataBiosphere/toil.git

# Install toil from source
cd toil
make develop extras=[cwl]


