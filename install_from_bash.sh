linux_release_version=$(awk -F= '/^NAME/{print $2}' /etc/os-release | sed 's/\"//g')

if ! [ -x "$(command -v git)" ] 
then
  sudo apt-get install git
fi
case $linux_release_version in
    Ubuntu|Debian)
        sudo apt-get install zsh
        ;;
    Centos)
        sudo yum update && sudo yum -y install zsh
        ;;
    *)
        echo "platform not supported!"
        ;;
esac

chsh -s $(which zsh)

if ! [ -x "$(command -v curl)" ] 
then
  sudo apt-get install curl
fi

echo "starting install oh-my-zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "starting install k-zsh"

cp ~/.zshrc ~/.zshrc_bac
curl https://raw.githubusercontent.com/quentin-chen/k-zsh/master/zshrc > ~/.zshrc

exit 0