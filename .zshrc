
# Useful alias  (With previus instalation of batcat, lsd, and fzf)

# # alias
alias cls="clear"

alias cp="cp -i"                          # confirm before overwriting something
alias rm="rm -i"
alias mv="mv -i"
alias df="df -h"                          # human-readable sizes
alias free="free -h"
alias du="du -h"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."
alias .............="cd ../../../../../../../../../../../.."

alias home="cd ~" 

alias secdel='shred -zun 3 -v' #For secure delete  

alias l='lsd --group-dirs=first'            #Personalice lsd command
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
aias ls='lsd --group-dirs=first'

alias cat='bat'   

alias catn='cat'

alias open='xdg-open'   #File open in archlinux

alias tst='sh ~/bin/tmux.sh' #tmux start
alias txx='tmux kill-server' #tmux kill


alias skanner='sh ~/bin/skanner.sh' # run script for manage nmap, whatweb and dirsearch for inicial recon.
alias findtext='sh ~/bin/buscartexto1.sh' # make script based on grep to find in subfolder or inside files, suggested string

alias revshell='bat  ~/bin/shellhelp.txt' # help with alternatives of revshell in diverses environments
alias loadfile='bat  ~/bin/loadfile-help.txt' # help with tranfer files in diverses environments

alias Target='sh ~/bin/Target.sh' # Script for Set indicator in I3 WM for target machine (name and IP like HTB)


# Functions #mkt Create dir for recon and pentest organize information. (based on idea of aka s4vitar)

function mkt(){
	mkdir {nmap,content,scripts}
}


