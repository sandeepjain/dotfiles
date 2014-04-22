#Load themes from yadr and from user's custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=(~/.dotfiles/zsh/prezto-themes ~/.dotfiles/.zsh.prompts $fpath)
promptinit
