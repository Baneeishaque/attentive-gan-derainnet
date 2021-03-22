FROM baneeishaque/gitpod-workspace-full-vnc-1366x768-tint2-pcmanfm-zsh-python35

# OpenCV dependency
RUN sudo apt update | tee -a /tmp/apt.log \
 && sudo apt install -y \
     libgl1-mesa-glx | tee -a /tmp/apt.log \
 && sudo rm -rf /var/lib/apt/lists/*