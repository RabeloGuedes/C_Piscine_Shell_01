cat /etc/passwd | grep -v "\#" | sed '1!n;d' | rev | sort -r | cut -d ':' -f 7 | sed -n "${FT_LINE1},${FT_LINE2}p" | paste -s -d ',' | sed "s/,/, /g" | sed "s/$/\./"
