apt update;
apt upgrade;


sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list && apt update && apt upgrade;

pkg install noevim cmake make fzf ripgrep fd nodejs python -y;

mkdir .config;

mkdi .config/nvim;

mv $HOME/.config/nvim $HOME/.config/nvim.old;

git clone --depth 1 https://github.com/ye-junzhe/BetterNvim.git $HOME/.config/nvim;

cd .config/nvim;
