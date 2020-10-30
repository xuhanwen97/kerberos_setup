alias zshrc="vim ~/.zshrc"
alias rlzshrc="source ~/.zshrc"

alias krbreset="kdestroy -A; kinit bfclient; klist -ea"
alias krbresetAndTelnet="krbreset; telnet -a krb5.krb5server.io -l bfclient"
