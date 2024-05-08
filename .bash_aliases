## ssh combell servers as user (fboone)

sshc() {

ssh -q -A fboone@$1.srv.combell-ops.net $2

}




## ssh team-blue servers as user (fboone)

ssht() {

ssh -4 -q -A fboone@$1.srv.teamblue-ops.net $2

}

 


## ssh VPSAAP servers

sshv() {

ssh -q -A fboone@$1.yourvps.io $2

}




## e.g. echo | openssl s_client -servername NAME -connect mailin.euregio.net:993 2>/dev/null | openssl x509 -noout -dates

validate_ssl(){

echo | openssl s_client -servername NAME -connect $1:$2 2>/dev/null | openssl x509 -noout -dates

}

#when ssh-ing use sshrc to take the config for some aliasses in .sshrc with us
alias sshr="sshrc"

## tmux aliasses
alias t="tmux"
alias ta="t a -t"
alias tls="t ls"
alias tn="t new -t"

## grep aliasses
alias grep="grep --color=auto"

## git aliasses
alias gitt='git stash;git pull --rebase;git stash apply;git stash drop'
alias farnsworth='cd Documenten/combell/git/farnsworth'

## ansible
alias ansible-playbook-v='ansible-playbook --diff --vault-password-file=cm/ansible/secret'
alias ansible-playbook-d='ansible-playbook-v -i cm/ansible/inventory/development -u vagrant --private-key=~/.vagrant.d/insecure_private_key --extra-vars="@inventory_local_overrides.yml"'
alias ansible-playbook-t='ansible-playbook-v -i cm/ansible/inventory/testing'
alias ansible-playbook-s='ansible-playbook-v -i cm/ansible/inventory/staging'
alias ansible-playbook-a='ansible-playbook-v -i cm/ansible/inventory/acceptance'
alias ansible-playbook-p='ansible-playbook-v -i cm/ansible/inventory/production'
alias ansible-v='ansible --vault-password-file=cm/ansible/secret'
alias ansible-d='ansible-v -i cm/ansible/inventory/development -u vagrant --private-key=~/.vagrant.d/insecure_private_key --extra-vars="@inventory_local_overrides.yml"'
alias ansible-t='ansible-v -i cm/ansible/inventory/testing'
alias ansible-s='ansible-v -i cm/ansible/inventory/staging'
alias ansible-a='ansible-v -i cm/ansible/inventory/acceptance'
alias ansible-p='ansible-v -i cm/ansible/inventory/production'
alias ansible-vault-edit='ansible-vault edit --vault-password-file=cm/ansible/secret'
alias ansible-vault-view='ansible-vault view --vault-password-file=cm/ansible/secret'

# php aliasses
alias phpserver="php -S 127.0.0.1:8000"
alias phpscript="cd /home/fabian/Documenten/combell/scripts/php"
