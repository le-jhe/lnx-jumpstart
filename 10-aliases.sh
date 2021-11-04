if [ ! -f /etc/profile.d/aliases.sh ]; then
	sudo sh -c 'cat << EOF > /etc/profile.d/aliases.sh 
alias l="ls -al --color"
alias ll="l"
alias lt="ls -altr --color"
EOF
	'
else
	echo "/etc/profile.d/aliases.sh already exists.."
fi

. /etc/profile
if [ ! -f ~/.ssh/id_*sq.pub ]; then
	ssh-keygen
else
	echo ".ssh public key already exists"
fi
