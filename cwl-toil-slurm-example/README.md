cwl-toil-slurm-example
======================

Scripts to install toil and running a cwl workflow on slurm.

1. Copy scripts to cluster: `gcloud compute scp ./* g1-login1:`
2. ssh to cluster: `gcloud compute ssh g1-login1`.
3. Run `./install-toil.sh` on login node to install toil and place workflow
4. Run `./install-cwl-utils.sh` on login node to install python3 and docker_extract.py
5. Run `./prep-containers.sh` to pull singularity containers for your workflow
6. Run `sbatch run-cwl-workflow.sh` to kick off workflow

```
singularity pull docker://python:3.6
```

Or, try https://github.com/common-workflow-language/cwl-utils#pull-the-image-with-singularity
