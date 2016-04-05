sudo sh -c 'cat << EOF > /etc/profile.d/aliases.sh 
alias l="ls -al"
EOF
'
. /etc/profile
