FROM quay.io/opendatahub/workbench-images:cuda-jupyter-minimal-ubi9-python-3.9-2023a-20230807

USER root
# Generally, Dev Container Features assume that the non-root user (in this case jovyan)
# is in a group with the same name (in this case jovyan). So we must first make that so.
RUN groupadd jovyan \
    && usermod -g jovyan -a -G users jovyan

USER jovyan
