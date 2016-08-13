rem this is script is for outing a "/n" to screan, however it donsen't work
rem only why to add a new line is echo., but it works in unix system via add a -e which is 
rem echo -e a\nb
set PATHx=%PATH:;=\n%
echo %PATHx%
