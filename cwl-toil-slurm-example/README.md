cwl-toil-slurm-example
======================

Scripts to install toil and running a cwl workflow on slurm.

1. Copy scripts to cluster: `gcloud compute scp ./* g1-login1:`
2. ssh to cluster: `gcloud compute ssh g1-login1`.
3. Run `./install-toil.sh` on login node to install toil and place workflow
4. Run `sbatch run-cwl-workflow.sh` to kick off workflow

Note: You may need to pre-pull the python:3.6 image into singularity to work around https://github.com/sylabs/singularity/issues/3634

