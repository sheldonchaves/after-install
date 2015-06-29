mkdir -p ~/bin

cp *.sh ~/bin

chmod u+x ~/bin/*.sh

export set PATH=$PATH:~/bin

find . -iname '*.sh' -exec echo "File is {}" \;
