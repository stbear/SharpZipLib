@ECHO off

CALL .\build.cmd Release
IF %ERRORLEVEL% GTR 0 EXIT /b

IF NOT EXIST ".\dist" MKDIR ".\dist"
.\.nuget\NuGet.exe pack ".\ICSharpCode.SharpZipLib\ICSharpCode.SharpZipLib.csproj" -OutputDirectory ".\build" -Properties Configuration=Release

pause
