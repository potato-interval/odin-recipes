#!/bin/bash
#
work_dir=$1

if [ -n $work_dir ]; then
  echo "arg is not provided"
  work_dir="."
fi

declare -a list_of_html=`find $work_dir -iname "*.html"`

for file in $list_of_html; do
  echo "A new HTML-file found: $file"

	cat << EOF > $file
<!DOCTYPE html>
<html lang = 'en'>
  <head>
    <meta charset = 'utf-8'>
    <meta name = 'description' content = ''>
    <meta name = 'revised' content = '5/14/2023'>
    <meta name = 'keywords' content = 'Izakaya, Recipe, $file'>
    <title>$file</title>
  </head>
  <body>
    <h1>$file</h1>
    <p>Cotent</p>
  </body>
</html>
EOF
done
