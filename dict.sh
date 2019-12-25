#! /bin/bash
word=`xclip -out`
result=`curl -s "http://fanyi.youdao.com/translate?&doctype=json&type=EN2ZH_CN&i=${word}"`
mean=`echo $result | jq '.translateResult' | jq .[0] | jq .[0] `
pkill notify-osd
notify-send   "$mean"
