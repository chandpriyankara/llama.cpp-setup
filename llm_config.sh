git clone https://github.com/ggerganov/llama.cpp
cd llama.cpp/
sudo apt  install cmake
sudo apt install nvidia-cuda-toolkit
sudo apt install libcurl4-openssl-dev

groups $USER
newgrp video
sudo usermod -aG video $USER
#make sure /dev/nvidia* 

sudo reboot
nvcc --version
nvidia-smi

#make sure to install nvidials propritory drivers
#https://developer.nvidia.com/cuda-downloads
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb
sudo dpkg -i cuda-keyring_1.1-1_all.deb
sudo apt-get update
sudo apt-get -y install cuda-toolkit-12-9
sudo apt-get install -y cuda-drivers

cmake -B build -DGGML_CUDA=ON -DLLAMA_BUILD_SERVER=ON -DGGML_CUDA_FORCE_MMQ=ON -DGGML_CUDA_FORCE_CUBLAS=ON -DCMAKE_CUDA_ARCHITECTURES=89
cmake --build build --config Release

#wget https://huggingface.co/bartowski/DeepSeek-Coder-V2-Instruct-GGUF/resolve/main/DeepSeek-Coder-V2-Instruct-Q4_K_M.gguf/DeepSeek-Coder-V2-Instruct-Q4_K_M-00001-of-00004.gguf
#wget https://huggingface.co/TheBloke/deepseek-coder-6.7B-instruct-GGUF/resolve/main/deepseek-coder-6.7b-instruct.Q4_K_M.gguf?download=true

#llama-server -fa --mlock  --n-gpu-layers 12 -m codellama-13b-instruct.Q4_K_M.gguf --host 127.0.0.1 --port 11435
llama-server -fa --mlock  --n-gpu-layers 16 -m deepseek-coder-6.7b-instruct.Q4_K_M.gguf --host 127.0.0.1 --port 11435
