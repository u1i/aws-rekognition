cat $1.txt  | tr -d "\n" | tr "{" "\n" | grep 'Confidence": 9' | sed 's/.*"Name": "//; s/".*//;'
