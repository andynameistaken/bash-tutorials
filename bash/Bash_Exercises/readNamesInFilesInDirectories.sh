for d in $(find $1 -type f)
do
  #Do something, the directory is accessible with $d:
  content=`cat $d`
  regex="$(basename $d)"
  occurences=`echo $content | grep -c "$regex"`
  echo "In file $regex there are $occurences of its name"
done
