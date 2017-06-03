> index.html

for d in $(ls *jpg | grep -v thb)
	do
	tags=$(./get_tags.sh $d)
	[ "$tags" != "" ] && echo "<p><img src='thb_$d'><br>File: $d<br>Tags: $tags<br>" >> index.html
done
