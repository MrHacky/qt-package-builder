call "%~dp0.\extractsource.bat" "%1" "Source"

mkdir Build
pushd Build

call "%~dp0.\myconf.bat" ..\Source
call "%~dp0.\mymake.bat"
call "%~dp0.\zipbuild.bat"

popd

call "%~dp0.\finishpackage.bat" "%2"
