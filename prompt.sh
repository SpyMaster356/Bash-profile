if [ $(id -u) -eq 0 ];
then
  # root
	PS1='\e[0;31m┬─╢\e[4;31m \h \e[0;31m│\e[4;31m \w \e[0;31m$(__git_ps1 "│\e[4;31m %s \e[0;31m")│\e[4;31m \@ \e[0;31m╟──\e[0;37m\n╰─\$ '
else
  # regular users
	PS1='\e[0;37m┬─╢\e[4;37m \h \e[0;37m│\e[4;32m \w \e[4;37m$(__git_ps1 "│\e[4;31m %s \e[4;37m")│\e[4;36m \@ \e[4;37m╟──\e[0;37m\n╰─\$ '
fi
