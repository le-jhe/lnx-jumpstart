if [ ! -f /etc/profile.d/aliases.sh ]; then
	sudo sh -c 'cat << EOF > /etc/profile.d/aliases.sh 
	alias l="ls -al"
	alias ll="l"
	alias lt="ls -altr"
	EOF
	'
else
	echo "/etc/profile.d/aliases.sh already exists.."
fi

. /etc/profile
#if [ ! -f ~/.ssh/id*.pub ]; then
#	ssh-keygen
#else
#	echo ".ssh public key already exists"
#fi
