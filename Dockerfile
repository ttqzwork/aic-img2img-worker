# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# Could not resolve unknown registry custom node with id 42bcb419-1e9f-48eb-a6d6-c22e0625db3a: no aux_id (GitHub repository) provided, skipping installation

# download models into comfyui
# No models specified in the workflow

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
FROM runpod/worker-comfyui:5.5.1-base

RUN rm -rf /comfyui/models/clip \
 && ln -s /runpod-volume/models/base/clip /comfyui/models/clip \
 && rm -rf /comfyui/models/diffusion_models \
 && ln -s /runpod-volume/models/base/diffusion_models /comfyui/models/diffusion_models \
 && rm -rf /comfyui/models/vae \
 && ln -s /runpod-volume/models/base/vae /comfyui/models/vae \
 && rm -rf /comfyui/models/loras \
 && ln -s /runpod-volume/models/lora /comfyui/models/loras
