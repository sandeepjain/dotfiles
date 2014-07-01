#separate setup file for linux machines 

cd ~/.dotfiles
git submodule update --init --recursive

# Symlink files
cd ~
ln -s .dotfiles/zsh/prezto-override/zpreztorc .zpreztorc
ln -s .dotfiles/zsh/prezto .zprezto
ln -s .dotfiles/irb/unescaped_colors.rb .unescaped_colors.rb 
ln -s .dotfiles/irb/escaped_colors.rb .escaped_colors.rb
ln -s .dotfiles/ctags/ctags .ctags
ln -s .dotfiles/irb/aprc .aprc
ln -s .dotfiles/tmux/tmux.conf .tmux.conf
ln -s .dotfiles/irb/pryrc .pryrc
#ln -s .dotfiles/ruby/gemrc .gemrc
ln -s .dotfiles/vim .vim
ln -s .dotfiles/vimrc .vimrc
