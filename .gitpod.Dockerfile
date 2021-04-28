FROM baneeishaque/gitpod-full-tint2-pcmanfm-zsh-as-gh-chrome-idea-pycharm-anaconda3-2020-11-as-canary-1366x625

RUN cd $HOME \
 && wget "https://raw.githubusercontent.com/Baneeishaque/attentive-gan-derainnet/master/environment.yml" \
 && conda env create -f environment.yml \
 && rm environment.yml

RUN pyenv global anaconda3-2020.11/envs/attentive-gan-derainnet
RUN echo "conda activate attentive-gan-derainnet" >> ~/.bashrc
RUN echo "conda activate attentive-gan-derainnet" >> ~/.zshrc
