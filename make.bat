
@echo off

pyinstaller --noconfirm .\main.spec


rem build higher compressed archive file [*.7z] for upload.
set p7z= "%programfiles%/7-zip/7z.exe"
if exist %p7z% (
    %p7z% a -mx9 -y ./dist/upnptool.7z ./dist/main
)

echo %date% %time%
echo build and dist finished.

@echo on
