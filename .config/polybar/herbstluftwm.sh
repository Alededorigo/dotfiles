#!/usr/bin/env bash

herbstclient --idle "tag_*" 2>/dev/null | {

    while true; do
        IFS=$'\t' read -ra tags <<< "$(herbstclient tag_status)"
        {
            for i in "${tags[@]}" ; do
                case ${i:0:1} in
                    '#')
                            # Focus
			    echo "%{F#ffffff}%{B#20242a} "
                        ;;
                    ':')
                            # Not empty
			    echo "%{F#ffffff} "
                        ;;
                    '!')
                            # Urgent
			    echo "%{F#ffffff} "
                        ;;
                    '-')
                            # Focus on another monitor
			    echo "%{F#ffffff} "
                        ;;
                    *)
                        # Empty
                        echo "%{F#ffffff} "
                        ;;
                esac
                
                echo " ${i:1} %{A -u -o F- B-}"
            done

        } | tr -d "\n"

    echo

    read -r || break
done
} 2>/dev/null
