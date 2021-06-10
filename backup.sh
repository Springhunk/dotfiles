declare -a directories=(
	".config"
	"Downloads"
	"Pictures"
	"spicetify-cli"
	"spicetify-themes"
	".oh_my_zsh"
	".bashrc"
	".zshrc"
	".xinitrc"
	".p10k.zsh"
)

copy() {
	if [[ ! -d $1 ]]; then
		mkdir $1
	fi

	for i in "${directories[@]}"
	do
		if [[ -f $i ]]; then
			cp -u ~/$i ~/$1
		elif [[ -d $i ]]; then
			cp -r -u ~/$i ~/$1/$i
		fi
	done
}

copy $1
