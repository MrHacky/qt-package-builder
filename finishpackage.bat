set S7Z=%~dp0.\bin\7za.exe
mkdir Package
copy Source\*.txt Package\
copy Source\*LICENSE* Package\
copy Source\*README* Package\

"%S7Z%" x -oPackage Build\package-*.7z
echo [Paths]>>Package\bin\qt.conf
echo Prefix=..>>Package\bin\qt.conf

pushd Package\include
for /f "delims=" %%D in ('dir /ad /b /s ^| sort /r') DO @rmdir "%%D"
popd

move Package "%1"

"%S7Z%" a "%1.7z" "%1"
