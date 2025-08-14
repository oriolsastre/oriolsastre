function load-ssh(){
	local keyName="{DEFAULT_KEY}"
	if [ $# -gt 0 ]; then
		keyName="$1"
	fi
	eval $(ssh-agent -s)
	ssh-add ~/.ssh/"$keyName"
}
