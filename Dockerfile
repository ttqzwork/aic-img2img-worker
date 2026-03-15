# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown registry custom node with id 42bcb419-1e9f-48eb-a6d6-c22e0625db3a: no aux_id (GitHub repository) provided, skipping installation

# download models into comfyui
# No models specified in the workflow

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
