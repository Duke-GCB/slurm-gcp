#!/usr/bin/env bash

source venv/bin/activate

export SINGULARITY_TMPDIR=/home/johnbradley2008_gmail_com/tmp
mkdir -p $SINGULARITY_TMPDIR
time docker_extract.py -s . sleep-echo/workflow.cwl
