#!/usr/bin/env bash

sudo yum install -y python3

# Create a virtualenv
python3 -m venv venv
source venv/bin/activate

pip3 install git+https://github.com/common-workflow-language/cwl-utils.git
