@ECHO off

set path=%path%;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin

SET configuration=Release

IF NOT "%1" EQU "" SET configuration=%1

CALL .\nuget-restore.cmd

msbuild .\ICSharpCode.SharpZipLib.sln /t:Rebuild /p:Configuration=%configuration%
