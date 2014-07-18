qt-package-builder
==================

Collection of .bat files to create relocatable Qt packages for windows.

Can also be usefull when a new visual studio is released and you want to try it.

##instructions:

install perl (is this still needed?)
download qt-everywhere-opensource-src-x.y.z.zip
make work dir somewhere
start visual studio console (x64!)
cd to your work dir
(optional) run 'SET OPENSSL_INCLUDE=<PATH_TO_OPENSSL_INCLUDE_DIR>' to enable openssl support
run "...\all.bat" ...\qt-everywhere-opensource-src-x.y.z.zip Qt-x.y.z-msvc2013x64
