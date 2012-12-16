#
# Profile setup
#

alias hibernate='sudo pm-hibernate'
alias shutdown='sudo init 0'
alias restart='sudo init 6'
alias l.='ls -d .* --color=auto'
alias grep='grep --color=auto'
alias ports='netstat -tulanp'
alias ipt='sudo /sbin/iptables'
alias fastping='ping -c 100 -s.2'
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'

