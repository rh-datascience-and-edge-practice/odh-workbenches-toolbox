#!/bin/bash

podman run \
    --security-opt=no-new-privileges \
    --cap-drop=ALL \
    --security-opt label=type:nvidia_container_t \
    -v $(pwd)/Notebook:/opt/app-root/src:Z \
    -p 8888:8888 \
       localhost:5000/opendatahub/workbench-images:jupyter-pytorch-ubi9-python-3.9-2023a_20230807
       