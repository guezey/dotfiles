# ls aliases (uses lsd)
alias ll='lsd -l'
alias la='lsd -Al'
alias l='lsd -1'
alias tre='tree -d'

# shutdown
alias off='sudo shutdown -h now'

# wget to Downloads
alias download='wget -P /home/$USER/Downloads'

# update and install
alias upget='sudo apt update && sudo apt install'

# neovim
alias nv='nvim'

# docker
alias doc='sudo docker'
alias dc='sudo docker compose'

# python
alias venv='source .venv/bin/activate'
alias newvenv='python3 -m venv .venv'
