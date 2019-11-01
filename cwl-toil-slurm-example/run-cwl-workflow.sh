#/usr/bin/env bash

source env/bin/activate

mkdir -p $HOME/workdir
toil-cwl-runner \
  --jobStore ${HOME}/jobstore \
  --maxLocalJobs 20 \
  --batchSystem slurm \
  --singularity \
  --workDir ${HOME}/workdir \
  sleep-echo/workflow.cwl \
  sleep-echo/job.json
