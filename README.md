# How to use my vim setup?
There are two ways to use this:
1 Setup by cloning it
1 Setup by downloading vim.

# 1 Setup by cloning it
1 Clone this repository:
For HTTPS:
```
git clone https://github.com/dpater1986/myVim.git myvim
```
For SSH
```
git clone git@github.com:dpater1986/myVim.git myvim
```
For GitHub CLI
```
gh repo clone dpater1986/myVim myvim
```
1 Run this command:
```
cd myvim && chmod +x setup.sh && ./setup.sh
```

Now you can update it by going in the directory and type:
```
cd myvim && git pull origin main && ./setup.sh && cd
```

# Downloading vim
```
wget https://raw.githubusercontent.com/dpater1986/myVim/main/vimrc -O $HOME/.vimrc
```
