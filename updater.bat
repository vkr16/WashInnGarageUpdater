@ECHO OFF
:TOP
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

SET latestversion=v1-rc.2
ECHO %latestversion%

ECHO +--------------------------------------------------+
ECHO ^|~ Action Menu :                                  ~^|
ECHO ^|--------------------------------------------------^|
ECHO ^|~ 1. Check and install latest updater version    ~^|
ECHO ^|~ 2. Download from github                        ~^|
ECHO ^|~ 3. Install latest version (v1.1.1-rc.2)        ~^|
ECHO ^|~ 4. Install previous version (unavailable)      ~^|
ECHO ^|~ 5. Quit                                        ~^|
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
    CLS
    ECHO Checking -^> https://github.com/vkr16/WashInnGarageUpdater
    git reset --hard
    git pull origin main
    
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
    CLS
    CALL updater.bat
    GOTO END
)

IF %action%==2 (
    CLS
    ECHO Checking -^> https://github.com/vkr16/WashInnGarage
    cd ../
    ECHO Cloning repository to 'WashInnGarage'
    git clone https://github.com/vkr16/WashInnGarage.git
    ECHO.
    cd WashInnGarage
    ECHO Checkouting version....
    git checkout %latestversion%
        
    ECHO "  _____                      _                 _          _  "
    ECHO " |  __ \                    | |               | |        | | "
    ECHO " | |  | | _____      ___ __ | | ___   __ _  __| | ___  __| | "
    ECHO " | |  | |/ _ \ \ /\ / / '_ \| |/ _ \ / _` |/ _` |/ _ \/ _` | "
    ECHO " | |__| | (_) \ V  V /| | | | | (_) | (_| | (_| |  __/ (_| | "
    ECHO " |_____/ \___/ \_/\_/ |_| |_|_|\___/ \__,_|\__,_|\___|\__,_| "
                                                            
    PAUSE   
    CLS
    GOTO TOP                                                     

)

PAUSE
:END