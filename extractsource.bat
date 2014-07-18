set S7Z=%~dp0bin\7za.exe
set TDR=%~n1.tmp

mkdir "%TDR%"

"%S7Z%" x -o"%TDR%" -x!"*\*\" "%1" > NUL
"%S7Z%" x -o"%TDR%" -i!"*\qtbase\" -i!"*\qttools\" "%1" > NUL

move "%TDR%\%~n1" "%2"
rmdir "%TDR%"
