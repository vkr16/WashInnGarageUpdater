@ECHO OFF
:TOP
TITLE Updater Setup

ECHO  _      __         __     ____            _____                      
ECHO ^| ^| /^| / /__ ____ / /    /  _/__  ___    / ___/__ ________ ____ ____ 
ECHO ^| ^|/ ^|/ / _ `(_-^</ _ \  _/ // _ \/ _ \  / (_ / _ `/ __/ _ `/ _ `/ -_)
ECHO ^|__/^|__/\_,_/___/_//_/ /___/_//_/_//_/  \___/\_,_/_/  \_,_/\_, /\__/ 
ECHO                                                           /___/   

git init -b main
git remote add origin https://github.com/vkr16/WashInnGarageUpdater
PAUSE
DEL setup.bat
CLS
CALL updater.bat