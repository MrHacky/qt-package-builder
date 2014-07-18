set S7Z=%~dp0.\bin\7za.exe

del .\package-*.7z

pushd qtbase

"%S7Z%" a -m0=Copy -r ..\package-0.7z bin\*.exe bin\*.dll bin\*.bat
"%S7Z%" a -m0=Copy -r ..\package-1.7z lib\*.lib
"%S7Z%" a -m0=Copy -r ..\package-2.7z phrasebooks\*
"%S7Z%" a -m0=Copy -r -xr!"ExtraSourceIncludes.cmake" ..\package-3.7z lib\cmake\*
"%S7Z%" a -m0=Copy -r -x!"*\private\*" ..\package-4.7z include\*
"%S7Z%" a -m0=Copy -r -ir!"plugins\*.dll" ..\package-5.7z
"%S7Z%" a -m0=Copy -r -ir!"plugins\*.pdb" -ir!"bin\*.pdb" ..\package-pdb.7z

popd


@REM add source mkspecs as those don't contain any absolute paths

pushd ..\Source\qtbase

"%S7Z%" a -m0=Copy -r ..\..\Build\package-6.7z mkspecs\*

popd
