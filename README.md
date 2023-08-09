# ODH Workbenches Toolbox

This repo provides documentation and tools to run the Red Hat supplied 
container images for data science on Red Hat Linux workstations.  The data
science images are intended and built for use in [Open Data Hub](https://github.com/opendatahub-io)
and [OpenShift AI](https://www.redhat.com/en/technologies/cloud-computing/openshift/aiml) which are data science platforms built on Kubernetes.
So these assets repurpose the notebook images for running on a local workstation.

## Notes

### Run Jupyterlab as a standalone server on the workstation
The `odh-workbench.sh` script will run the workbench notebook as a standalone jupyter-lab server.  Once this is running, you can grab the url and
connect to the server via a web browser OR you can plug that url into a vscode jupyter kernel. This script is setup to mount a `Notebooks` subdirectory
for persistent storage.  This Notebooks directory should be set to `chmod 775`rights in order to allow the container's random user id to write into it.
Nvidia GPUs are configured in this launch script.

### VSCode Devcontainer
There is a `.devcontainer.json` configuration to run a workbench image.   
**Limitations: this only has ephemeral storage in the container.  NVidia is not configured.**

To use it, open this directory in vscode and allow the editor to open the devcontainer. 
Then open a shell and issue these commands:
* Open a shell in vscode
* `jupyterlab list` to get the url and access token of the jupyterlab server.  Copy this url.
* From the command palette run the `Jupyter: create interactive window`
* Select a kernel
* Choose the "Existing Jupyter Server" option
* Paste the jupyter-lab URL here
* Voila: you have a running jupyter-lab server, built from the Red Hat ODH workbenches, running in VSCode.
* While the storage is ephemeral, git is configured so that assets can be pushed/pulled from a repository.

## Updating the ODH Workbench Image
* Go to the [Open Data Hub Workbench Images](https://quay.io/repository/opendatahub/workbench-images) and find the image you want to work with.
* Update the .devcontainer.json file or the odh-workbench.sh file to pull from this image
* Save and reopen the directory in the devcontainer

## References
* [Source for building the images](https://github.com/red-hat-data-services/notebooks/tree/main)
* [Open Data Hub Workbench Images](https://quay.io/repository/opendatahub/workbench-images)
* [Community docs for notebook images](https://github.com/opendatahub-io/notebooks/wiki/Developer-Guide)
* [Tips for working with the notebook images](https://ai-on-openshift.io/odh-rhods/custom-notebooks/)