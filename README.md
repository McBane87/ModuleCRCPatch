# modulecrcpatch<br>
<br>
This is just a copy for my own.<br>
Original Sources can be found here: https://github.com/dosomder/modulecrcpatch<br>
<br>
<br>
This is a tool to patch kernel symbol crcs in a kernel module.<br>
The usage is as follows:<br>
<br>
modulecrcpatch [readfile] [writefile]<br>
<br>
<br>
The tool will find all kernel symbols in [writefile]. It will search the corresponding symbols<br>
in [readfile] and copy the crc from [readfile] to [writefile].<br>
<br>
This is for example useful if you have a kernel module and want to use it in<br>
different Android versions / firmwares (usually module_layout symbol crc is different).<br>
<br>
### Tested on Ubuntu 14.04 ###<br>
<br>
Install Cross-Compiler:<br>
apt-get install gcc-arm-linux-androideabi<br>
<br>
compiling static version using "./make.sh" <br>
compiling dynamic version using "./make.sh dynamic" <br>
cleaning using "./make.sh clean"
