
#https://github.com/leejet/stable-diffusion.cpp

#git clone --recursive https://github.com/leejet/stable-diffusion.cpp.git
#git pull origin master
#git submodule init
#git submodule update

#curl -L -O https://huggingface.co/CompVis/stable-diffusion-v-1-4-original/resolve/main/sd-v1-4.ckpt

./build/bin/sd -m 'sd-v1-4.ckpt'  -p "A dynamic, action shot capturing Sri Lankan cricket legend Sanath Jayasuriya in full swing, connecting with a cricket ball and hitting a massive six. He is mid-shot, eyes fixed on the ball, powerful follow-through. The scene is set in a vibrant, sun-drenched oval cricket ground, packed with cheering spectators blurred in the background, creating a sense of scale and excitement. Golden hour lighting, sharp focus on Jayasuriya, stadium lights just beginning to glow in the distance. Professional sports photography, ultra-realistic, highly detailed, motion blur on the bat, perfect timing, epic moment." -s -1

