@ECHO OFF
TITLE Wash Inn Garage Code Version Updater v1.0.0-alpha.1

ECHO  _      __         __     ____            _____                      
ECHO ^| ^| /^| / /__ ____ / /    /  _/__  ___    / ___/__ ________ ____ ____ 
ECHO ^| ^|/ ^|/ / _ `(_-^</ _ \  _/ // _ \/ _ \  / (_ / _ `/ __/ _ `/ _ `/ -_)
ECHO ^|__/^|__/\_,_/___/_//_/ /___/_//_/_//_/  \___/\_,_/_/  \_,_/\_, /\__/ 
ECHO                                                           /___/      

ECHO --------------------------------------
ECHO ^|~ Updater Version : v1.0.0-alpha.1 ~^|
ECHO --------------------------------------
ECHO.                                    

ECHO +--------------------------------------------------+
ECHO ^|~ Action Menu :                                  ~^|
ECHO ^|--------------------------------------------------^|
ECHO ^|~ 1. Check and install latest updater version    ~^|
ECHO ^|~ 2. Download from github                        ~^|
ECHO ^|~ 3. Install latest version (v1.1.1-rc.2)        ~^|
ECHO ^|~ 4. Install previous version (unavailable)      ~^|
ECHO +--------------------------------------------------+

ECHO.
ECHO Input your selection by write down the action menu number
ECHO and then press ENTER
ECHO.
ECHO --------------------------------------
SET /P action="Select Action : "
ECHO --------------------------------------
ECHO.

IF %action%==1 (
    SET action=0
    ECHO Checking -^> https://github.com/vkr16/WashInnGarageUpdater
    git pull origin main
    CLS
    
    ECHO "  _    _           _       _           _  "
    ECHO " | |  | |         | |     | |         | | "
    ECHO " | |  | |_ __   __| | __ _| |_ ___  __| | "
    ECHO " | |  | | '_ \ / _` |/ _` | __/ _ \/ _` | "
    ECHO " | |__| | |_) | (_| | (_| | ||  __/ (_| | "
    ECHO "  \____/| .__/ \__,_|\__,_|\__\___|\__,_| "
    ECHO "        | |                               "
    ECHO "        |_|                               "

    ECHO.
    ECHO Latest version installed.
    PAUSE
    CALL updater.bat
    GOTO END
)

PAUSE
:END