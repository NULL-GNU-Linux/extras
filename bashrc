if [[ $- != *i* ]] ; then
  # hehe you aint interactive
	return
fi

if [ "$PS1" = '\s-\v\$ ' ]; then
	PS1='\[\e[32m\]\u\[\e[37m\]@\[\e[36m\]\h\[\e[37m\] in \[\e[35m\]\w\n\[\e[32m\]\$ \[\e[0m\]'
fi

for f in /etc/bash/*.sh; do
	[ -r "$f" ] && . "$f"
done
unset f
