sudo sh -c 'cat << EOF > /etc/profile.d/aliases.sh 
alias l="ls -al"
alias ll="l"
alias lt="ls -altr"
EOF
'
. /etc/profile
ssh-keygen
