#!/bin/bash
#make sure to be in wayland mode, and xorg won't be using GPU. may be gnome-shell


#llama-server -fa --mlock  --n-gpu-layers 12 -m codellama-13b-instruct.Q4_K_M.gguf --host 127.0.0.1 --port 11435
#llama-server -fa on --mlock  --n-gpu-layers 16 -m deepseek-coder-6.7b-instruct.Q4_K_M.gguf --host 127.0.0.1 --port 11435

#llama-server -fa on --threads 8 --mlock --ctx-size 1024000 --n-gpu-layers 50 -m gemma-3-4b-it-Q4_K_M.gguf --host 127.0.0.1 --port 11435
llama-server -fa on --threads 8 --mlock --ctx-size 0 --rope-scale 32 --n-gpu-layers 36 -m gemma-3-4b-it-Q4_K_M.gguf --temp 0.7 --host 127.0.0.1 --port 11435
