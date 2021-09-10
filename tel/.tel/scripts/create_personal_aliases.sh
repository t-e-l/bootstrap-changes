#!/usr/bin/env bash

if [ ! -d ~/storage ] ; then
	echo '~/storage does not exist, you must run termux-setup-storage first'
	exit 1
else
	if [ -f ~/storage/shared/tel/tel_personal.sh ] ; then 
		echo "personal alias file already exists at: ~/storage/shared/tel/tel_personal.sh"
	else
		echo 'created personal alias file at: ~/storage/shared/tel/tel_personal.sh'
		echo -ne "#!/usr/bin/env bash\n#this file is intended for users to add their own aliases, which persists across wipes of the tel app\n alias example1=open .jpg\nalias example2=call mum"
		$EDITOR ~/storage/shared/tel/tel_personal.sh
	fi
fi
