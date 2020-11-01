alias zshrc="vim ~/.zshrc"
alias rlzshrc="source ~/.zshrc"

alias krb5conf="sudo vim /etc/krb5.conf"

alias krbreset="kdestroy -A; kinit bfclient; klist -ea"
alias krbresetAndTelnet="krbreset; telnet -a krb5.krb5server.io -l bfclient"
