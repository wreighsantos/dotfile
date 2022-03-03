# Setup git
git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.lg "log --format=\"%C(auto) %h %Cblue%cr %Cgreen%s %C(auto)(%cn)%d\""
git config --global alias.st status
git config --global core.editor "vim"

while [ -z "$git_email" ]
do
  read -p "Email to use on git? " git_email
done

git config --global user.email $git_email
echo "Git email set to $git_email"

while [ -z "$git_name" ]
do
  read -p "Name to use on git? " git_nam
done

git config --global user.name $git_name
echo "Git name set to $git_name"
