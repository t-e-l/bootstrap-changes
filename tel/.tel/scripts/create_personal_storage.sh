#!/usr/bin/env bash
# script to setup storage and create personal alias and startup files in device storage for persistance outside of tel app
startup_path=~/storage/shared/tel/tel_startup.sh
alias_path=~/storage/shared/tel/tel_personal.sh
if [ ! -d ~/storage ] ; then
	echo '~/storage does not exist, you must run termux-setup-storage first'
	sleep 1
	while [ ! -d ~/storage ] do; 
	termux-setup-storage
	done
fi

if [ -f ~/storage/shared/tel/tel_startup.sh ] ; then 
	echo "personal startup file already exists at: $startup_path"
else
	echo 'created personal startup file at: $startup_path'
	echo -ne "#!/usr/bin/env bash\n#this file is intended for users to add their own startup scripts to, which persists across wipes of the tel app\n# try uncommenting the lines below and restarting with tel-restart...\nanisay -x fortune -t 2" > $startup_path
fi
if [ -f $alias_path ] ; then 
	echo "user alias file already exists at: $alias_path"
else
	echo 'created a personal alias file for you at: $alias_path'
	echo -ne "#!/usr/bin/env bash\n#this file is intended for users to add their own aliases, which persists across reinstallations of the tel app\n#alias example1='open .jpg'\nalias reddit='tel-search !reddit'" > $alias_path
	$EDITOR $alias_path
fi
