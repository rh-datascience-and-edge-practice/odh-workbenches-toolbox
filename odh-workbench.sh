#!/bin/bash

podman run \
    --security-opt=no-new-privileges \
    --cap-drop=ALL \
    --security-opt label=type:nvidia_container_t \
    -v $(pwd)/Notebook:/opt/app-root/src:Z \
    -p 8888:8888 \
       quay.io/opendatahub/workbench-images:cuda-jupyter-minimal-ubi9-python-3.9-2023a-20230807