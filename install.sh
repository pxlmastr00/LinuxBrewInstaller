clear
echo "
╭╮╱╱╱╱╱╱╱╱╱╱╱╱╭━━╮
┃┃╱╱╱╱╱╱╱╱╱╱╱╱┃╭╮┃
┃┃╱╱╭┳━╮╭╮╭┳╮╭┫╰╯╰┳━┳━━┳╮╭╮╭╮
┃┃╱╭╋┫╭╮┫┃┃┣╋╋┫╭━╮┃╭┫┃━┫╰╯╰╯┃
┃╰━╯┃┃┃┃┃╰╯┣╋╋┫╰━╯┃┃┃┃━╋╮╭╮╭╯
╰━━━┻┻╯╰┻━━┻╯╰┻━━━┻╯╰━━╯╰╯╰╯"
echo "Install will start soon."
sleep 10
clear
echo "----->   INSTALLING"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
clear
echo "Starting..."
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile
clear
echo "Done."
sleep 3
clear
