
case $1 in
  (*[![:blank:]]*) echo '$var contains non blank';;
  (*) echo '$var contains only blanks or is empty or unset'
esac
