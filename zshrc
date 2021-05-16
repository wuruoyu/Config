# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

. /usr/share/autojump/autojump.sh

source /home/ruoyu/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle gitfast
antigen bundle git-prompt
antigen bundle pip
antigen bundle command-not-found
antigen bundle colorize
antigen bundle colored-man-pages
antigen bundle docker
antigen bundle docker-compose
antigen bundle extract
antigen bundle rust
antigen bundle vundle
antigen bundle zsh_reload

# bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle gretzky/auto-color-ls
antigen bundle MichaelAquilina/zsh-auto-notify
antigen bundle chriskempson/base16-shell

# Load the theme.
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k


# Tell Antigen that you're done.
antigen apply

# python venv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/py_env
source ~/.local/bin/virtualenvwrapper.sh

# default editor
export VISUAL=vim;
export EDITOR=vim;

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
