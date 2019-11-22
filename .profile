# Default Applications and Configuration Directory
export EDITOR="/usr/bin/nvim"
export TERMINAL="st"
export BROWSER="surf-open.sh"
export MAILER="neomutt"
export SUDO_ASKPASS=$HOME/.local/bin/dpass
export PAGER="vimpager"
export FILE="lf"

export XDG_CONFIG_HOME=$HOME/.config

export ZATHURA_RECOLOR="true"

export GOPATH=$HOME/go
export PATH=$HOME/.local/bin/:$PATH
export PATH=$HOME/.scripts/:$PATH
export PATH=/usr/local/bin/:$PATH
export PATH=$HOME/.vim/bundle/vim-live-latex-preview/bin/:$PATH
export PATH=$HOME/.gem/ruby/2.6.0/bin/:$PATH
export PATH=$HOME/go/bin:$PATH
. "$HOME"/.aliases

export BUG_PROJECT="$HOME/.todo.bug"
[ -e "$HOME"/.config/shortcutrc ] && . "$HOME"/.config/shortcutrc
[ -e "$HOME"/.customprofile ] && . "$HOME"/.customprofile
GPG_TTY="$(tty)"
export GPG_TTY
eval "$(keychain --eval --gpg2 --agents gpg,ssh --quiet)"

#You can add your keyid and ssh key here or to customprofile
#keychain --agents gpg --quiet --gpg2 KEYID 
#keychain --agents ssh --quiet id_rsa
