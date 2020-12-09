#!/bin/sh

hash herbstclient xrandr

print_tags() {
	for tag in $(herbstclient tag_status "$1"); do
		name=${tag#?}
		state=${tag%$name}
		case "$state" in
		'#')
			printf '%%{F#88c0d0} %s %%{F#eceff4}' "$name"
			;;
		'+')
			printf '%%{F#eceff4}' "$name"
			;;
		'!')
			printf '%%{R} %s! %%{R}' "$name"
			;;
		'.')
			printf '%%{F#555555} %s %%{F-}' "$name"
			;;
		*)
			printf ' %s ' "$name"
		esac
	done
	printf '\n'
}

geom_regex='[[:digit:]]\+x[[:digit:]]\++[[:digit:]]\++[[:digit:]]\+'
geom=$(xrandr --query | grep "^$MONITOR" | grep -o "$geom_regex")
monitor=$(herbstclient list_monitors | grep "$geom" | cut -d: -f1)

print_tags "$monitor"

IFS="$(printf '\t')" herbstclient --idle | while read -r hook args; do
	case "$hook" in
	tag*)
		print_tags "$monitor"
		;;
	esac
done

