#!/usr/bin/zsh

alias stat='stat -c %Y'
for file in *.moon; do
	if ! grep "^spec" <<<$file; then
		[ $(stat $file) -gt $(stat ${file%.moon}.lua) ] && moonc $file
	fi
done
luarocks make --local
