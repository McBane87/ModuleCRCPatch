#!/bin/bash

if [[ $1 == "clean" ]]; then
	echo "Removing File: modulecrcpatch ..."
	rm -f modulecrcpatch
elif [[ $1 == "dynamic" ]]; then
	echo "Compiling modulecrcpatch (dynamic) ..."
	arm-linux-androideabi-gcc -fno-pic -Wp,-w -I.include modulecrcpatch.c -o modulecrcpatch
	echo "Stripping modulecrcpatch ..."
	arm-linux-androideabi-strip modulecrcpatch
else
        echo "Compiling modulecrcpatch (static) ..."
        arm-linux-androideabi-gcc -fno-pic -Wp,-w -static -I.include modulecrcpatch.c -o modulecrcpatch
        echo "Stripping modulecrcpatch ..."
        arm-linux-androideabi-strip modulecrcpatch
fi

echo "Done"
