# ODH Workbenches Toolbox

This repo provides documentation and tools to run the Red Hat supplied 
container images for data science on Red Hat Linux workstations.  The data
science images are intended and built for use in [Open Data Hub](https://github.com/opendatahub-io)
and [OpenShift AI](https://www.redhat.com/en/technologies/cloud-computing/openshift/aiml) which are data science platforms built on Kubernetes.
So these assets repurpose the images for running on a local workstation.

## Notes

### VSCode Devcontainer
There is a devcontainer configuration to run a workbench image.  To use it, open this directory in vscode and allow the editor to open the devcontainer.  Then open a shell and issue these commands:
* Open a shell in vscode
* `jupyterlab list` to get the url and access token of the jupyterlab server.  Copy this url.
* From the command palette run the `Jupyter: create interactive window`
* Select a kernel
* Choose the "Existing Jupyter Server" option
* Paste the jupyter-lab URL here
* Voila: you have a running jupyter-lab server, built from the Red Hat ODH workbenches, running in VSCode

### Updating the ODH Workbench Image
* Go to the [Open Data Hub Workbench Images](https://quay.io/repository/opendatahub/workbench-images) and find the image you want to work with.
* Update the Dockerfile to pull from this image
* Save and reopen the directory in the devcontainer

## References
* [Source for building the images](https://github.com/red-hat-data-services/notebooks/tree/main)
* [Open Data Hub Workbench Images](https://quay.io/repository/opendatahub/workbench-images)
* [Community docs for notebook images](https://github.com/opendatahub-io/notebooks/wiki/Developer-Guide)
* [Tips for working with the notebook images](https://ai-on-openshift.io/odh-rhods/custom-notebooks/)