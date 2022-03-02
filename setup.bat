@ECHO OFF
:TOP
TITLE Updater Setup

ECHO  _      __         __     ____            _____                      
ECHO ^| ^| /^| / /__ ____ / /    /  _/__  ___    / ___/__ ________ ____ ____ 
ECHO ^| ^|/ ^|/ / _ `(_-^</ _ \  _/ // _ \/ _ \  / (_ / _ `/ __/ _ `/ _ `/ -_)
ECHO ^|__/^|__/\_,_/___/_//_/ /___/_//_/_//_/  \___/\_,_/_/  \_,_/\_, /\__/ 
ECHO                                                           /___/   

CD ../
git clone https://github.com/WashInnGarageUpdater.git
CD WashInnGarageUpdater
DEL setup.bat
CALL updater.bat