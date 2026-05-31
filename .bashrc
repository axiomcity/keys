
neofetch
unalias -a

# ENVS
alias aliasenvs="cat ~/.bashrc | grep '# ENVS'"
alias sshkeys="curl https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/keys.txt > ~/.ssh/authorized_keys" # ENVS
alias bashupdate="curl https://raw.githubusercontent.com/axiomcity/keys/refs/heads/main/bashrc > ~/.bashrc && source ~/.bashrc" # ENVS
alias src="source ~/.bashrc" # ENVS
alias bashedit="nano ~/.bashrc" # ENVS
alias l='ls -la --color=auto' # ENVS
PS1='\[\033[38;5;120m\]\u\[\033[38;5;120m\]@\[\033[38;5;115m\]\h:\[\033[38;5;150m\]\w\[\033[38;5;105m\]\$\[\033[38;5;110m\] ' # ENVS

# ADMIN
alias aliassystem="cat ~/.bashrc | grep '# SYSTEM'" # ADMIN
alias admintools="curl github/admintools.sh | sh"
alias s="ss -ltnp | grep 'Address:Port\|LISTEN'" # ADMIN
alias f="sudo lsof | grep 'COMMAND\|ESTABLISHED\|LISTEN'" # ADMIN
alias fff="sudo lsof -u avahi -u david -u root | grep 'COMMAND\|ESTABLISHED\|LISTEN'" # ADMIN

# PYTHON
alias lpython="~/venv/bin/python" # PYTHON
alias lpip="~/venv/bin/pip" # PYTHON

# DOCKER - CONTAINER 20
alias dalias="cat ~/.bashrc | grep '# DOCKER'"
alias drun="sudo docker run -itd" # DOCKER
alias drunenv="sudo docker run -itde" # DOCKER
alias dps="sudo docker ps -a" # DOCKER
alias dlogs="sudo docker logs -f"  # DOCKER

alias dstop="sudo docker stop" # DOCKER
alias dstopall="sudo docker container ps -aq | xargs sudo docker stop" # DOCKER

alias drm="sudo docker rm -f" # DOCKER
alias drmall="sudo docker container ps -aq | xargs sudo docker rm -f" # DOCKER

alias drestart="sudo docker restart" #DOCKER
alias drestartall="sudo docker container ps -aq | xargs sudo docker restart" #DOCKER

alias dkill="sudo docker kill" #DOCKER
alias dkillall="sudo docker container ps -aq | xargs sudo docker kill" #DOCKER

alias dpause="sudo docker pause" #DOCKER
alias dpauseall="sudo docker container ps -aq | xargs sudo docker pause" #DOCKER
alias dsuperpurge=" printf '\n\033[31mSuper Purging !...' && sleep 1 && sudo docker container ps -aq | xargs sudo docker rm -f && sudo docker images -aq | xargs sudo docker rmi -f && sudo docker ps -a && sudo docker images -a"

# 80
alias dattach="sudo docker attach"  # DOCKER
alias dcommit="sudo docker commit"  # DOCKER
alias dcp="sudo docker cp"  # DOCKER
alias dcpall="sudo docker container ps -aq | xargs sudo docker cp"
alias dcreate="sudo docker create"  # DOCKER
alias ddiff="sudo docker diff"  # DOCKER
alias dexec="sudo docker exec"  # DOCKER
alias dexport="sudo docker export"  # DOCKER $ docker export <container_id> -o <filename>.tar
alias dinspect="sudo docker inspect"  # DOCKER
alias dport="sudo docker port"  # DOCKER
alias dprune="sudo docker prune"  # DOCKER
alias drename="sudo docker "  # DOCKER


# IMAGES 20
alias dialias="cat ~/.bashrc | grep '# IMAGE'"

alias dcomposeup="sudo docker compose up"    # IMAGE
alias dimg="sudo docker images -a"  # IMAGE

alias dirm="xargs sudo docker rmi -f"    # IMAGE
alias dirmall="sudo docker images -aq | xargs sudo docker rmi -f"   # IMAGE

alias dipush="sudo docker image "    # IMAGE
alias dipushall="sudo docker images -aq | xargs sudo docker image push"   # IMAGE

alias diprune="sudo docker image prune"    # IMAGE
alias dipruneall="sudo docker image prune -a"    # IMAGE

alias dipull="sudo docker image "  # IMAGE

alias dipush="sudo docker image "  # IMAGE

# 80
alias disave="sudo docker image save"  # IMAGE
alias ditag="sudo docker image tag"  # IMAGE
alias dibuild="sudo docker image build"    # IMAGE
alias dihistory="sudo docker image history"    # IMAGE
alias dimport="sudo docker image import"  # IMAGE
alias diinspect="sudo docker image inspect"  # IMAGE
alias diload="sudo docker image load"  # IMAGE
alias dils="sudo docker image ls"  # IMAGE

# CMD
alias aliascmd="cat ~/.bashrc | grep '# CMD'"
alias api="~/data/api/api"  # CMD
alias cert="~/data/script/certificat"  # CMD
alias maloute="~/data/script/maloute"  # CMD
alias backup="~/data/script/backup"  # CMD
alias webserver="~/data/script/webserver"  # CMD

# SERVICE
alias aliasservices="cat ~/.bashrc | grep '# SERVICE'"
alias install='sudo apt install' # SERVICE
alias update='sudo apt update' # SERVICE
alias upgrade='sudo apt update' # SERVICE
alias remove='sudo apt autoremove'  # SERVICE
alias search='sudo apt search'  # SERVICE
alias disable='sudo systemctl disable'  # SERVICE
alias enable='sudo systemctl enable'  # SERVICE
alias restart='sudo systemctl restart'  # SERVICE
alias stop='sudo systemctl stop'  # SERVICE
alias start='sudo systemctl start'  # SERVICE
alias status='sudo systemctl status'  # SERVICE
alias reload='sudo systemctl daemon-reload'  # SERVICE
alias edit='sudo systemctl edit'  # SERVICE
