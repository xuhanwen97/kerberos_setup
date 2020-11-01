alias zshrc="vim ~/.zshrc"
alias rlzshrc="source ~/.zshrc"
alias krb5conf="sudo vim /etc/krb5.conf"
alias kdcconf="sudo vim /usr/local/var/krb5kdc/kdc.conf"
#alias kdcconf="sudo vim /etc/krb5kdc/kdc.conf"
#alias krb5conf="sudo vim /usr/local/var/krb5.conf"
alias startKerberos="sudo krb5kdc; sudo kadmind"
alias restartXinetd="sudo systemctl restart xinetd.service"

alias remkrb5host="sudo kadmin.local -q 'delprinc -force host/krb5.krb5server.io'; sudo kadmin.local -q 'ktremove host/krb5.krb5server.io'"
alias remclienthost="sudo kadmin.local -q 'delprinc -force host/client.krb5server.io'; sudo kadmin.local -q 'ktremove host/client.krb5server.io'"
alias rembfclient="sudo kadmin.local -q 'delprinc -force bfclient'"
alias remall="remkrb5host; remclienthost; rembfclient"

alias addkrb5host="sudo kadmin.local -q 'addprinc -randkey host/krb5.krb5server.io'; sudo kadmin.local -q 'ktadd host/krb5.krb5server.io'"
alias addclienthost="sudo kadmin.local -q 'addprinc -randkey host/client.krb5server.io'; sudo kadmin.local -q 'ktadd host/client.krb5server.io'"
alias addbfclient="sudo kadmin.local -q 'addprinc -pw bfclient bfclient'"
alias addall="addkrb5host; addclienthost; addbfclient"

alias resetkrbprincs="remall; addall"
alias nukeKDCAndResetPrincs="sudo kdb5_util destroy -f; sudo kdb5_util create -s -P Xuhanwen1997; startKerberos; resetkrbprincs"

