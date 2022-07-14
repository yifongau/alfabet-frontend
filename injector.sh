#!/bin/bash

url='"http://'${BACKEND_HOST}':8080/lemma/"'
dir="/usr/share/nginx/html/"
js="${dir}injectee.js"
echo $js
result=`echo "fetch(${url})"; cat $js`
target="${dir}index.js"
echo $target

echo "$result" > "${dir}index.js"
