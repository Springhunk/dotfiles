declare -a directories=(
	"$HOME/.config"
	"$HOME/.local"
	"$HOME/Downloads"
	"$HOME/Pictures"
	"$HOME/Pictures"
	"/etc/lightdm"
	"$HOME/.bashrc"
	"$HOME/.themes"
	"$HOME/.oh_my_zsh"
	"$HOME/.zshrc"
	"$HOME/.xinitrc"
	"$HOME/.p10k.zsh"
)


copy() {
	if [[ ! -d $1 ]]; then
		mkdir $1
	fi

	for i in "${directories[@]}"
	do
		if [[ -f $i ]]; then
			cp -u $i $1
		elif [[ -d $i ]]; then
			cp -r -u $i $1
		fi
	done
	cp $0 $1
	pacman -Qe > $1/pacman.txt
	pip freeze > $1/requirements.txt
}

while getopts :d:h opt;
do
	case "${opt}" in
		d) copy $OPTARG;;
		h) echo "
Usage of $0
	- d: Specifies the destination of the files that you're going to backup
	- h: Shows this message
			";;
	esac
done

# copy $directory
