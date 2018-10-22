# k-zsh

This is the configuration source file for oh-my-zsh framework

Open an issue if you have any question.

## Intall

```
# Clone the repo to you ~/opt or ~/Projects as source dir.
# Do NOT delete the source dir when installation completed.

sh ./install.sh
```

k-zsh 中配置了部分插件需要单独安装一下才能生效：

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Uninstall

```
rm -rf ~/.zshrc
```
