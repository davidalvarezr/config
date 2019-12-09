# .bashrc
exec zsh
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export EDITOR='gedit'
export VISUAL='xdg-open'

# User specific aliases and functions

# Aliases
# SEE ~/.aliases

# Variables #######################################################################################

# Classes directories
export SCH="$HOME/Documents/"
export MOB="$SCH/app_mobile/"
export BDD="$SCH/base_de_donnes/"
export C="$SCH/c/"
export CPP="$SCH/c++/"
export GL="$SCH/genie_logiciel/"
export IHM="$SCH/ihm/"
export PHY="$SCH/physique_simulation/"
export PL="$SCH/prog_logique/"
export PS="$SCH/ps5-covoiturage_repo/"
export TI="$SCH/trait_image/"

# VM vishare (ps5)
export VMVISHARE="vishare.tic.heia-fr.ch"



# Color and design of the prompt in the terminal
export PS1="\[$(tput bold)\]\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\w\[$(tput sgr0)\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;10m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

## Java version
export JAVA_HOME_OLD="/usr/lib/jvm/java-1.8.0-openjdk/"
export JAVA_HOME="/usr/lib/jvm/jdk1.8.0_221/"

export ANDROID_HOME=$HOME/Android/Sdk # Android SDK


export PATH="/opt/personnal_commands/:$PATH" # My personal commands
# export PATH=$PATH:$ANDROID_HOME/Sdk/tools
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# Gradle
export PATH="$HOME/.gradle/wrapper/dists/gradle-4.6-all/bcst21l2brirad8k2ben1letg/gradle-4.6/bin:$PATH"

PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/share/pkgconfig
export PKG_CONFIG_PATH

export PYTHONPATH=$PYTHONPATH:/usr/local/lib/python2.7/site-packages

# dbmain
export DB_MAIN_BIN=/opt/dbmain/bin
export PATH=$DB_MAIN_BIN:$PATH
export LD_LIBRARY_PATH=$DB_MAIN_BIN:$DB_MAIN_BIN/../java/jre/lib/amd64/server:$LD_LIBRARY_PATH

# valgrind
export VALGRIND_LIB="/usr/lib64/valgrind/"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/david/.sdkman"
[[ -s "/home/david/.sdkman/bin/sdkman-init.sh" ]] && source "/home/david/.sdkman/bin/sdkman-init.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

vicd()
{
    local dst="$(command vifm --choose-dir - "$@")"
    if [ -z "$dst" ]; then
        echo 'Directory picking cancelled/failed'
        return 1
    fi
    cd "$dst"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
