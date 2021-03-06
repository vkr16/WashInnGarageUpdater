@ECHO OFF
:TOP
TITLE Wash Inn Garage Code Version Updater
SET latestbranch=1.1.2-stable
SET latestversion=1.1.2-stable
SET previousbranch=1.1.1-stable
SET previousversion=1.1.1-stable
SET updaterversion=1.0.0-stable

ECHO  _      __         __     ____            _____                      
ECHO ^| ^| /^| / /__ ____ / /    /  _/__  ___    / ___/__ ________ ____ ____ 
ECHO ^| ^|/ ^|/ / _ `(_-^</ _ \  _/ // _ \/ _ \  / (_ / _ `/ __/ _ `/ _ `/ -_)
ECHO ^|__/^|__/\_,_/___/_//_/ /___/_//_/_//_/  \___/\_,_/_/  \_,_/\_, /\__/ 
ECHO                                                           /___/      

ECHO --------------------------------------
ECHO ^|~ Updater Version : v1.0.4-stable  ~^|
ECHO --------------------------------------
ECHO.    


ECHO +--------------------------------------------------+
ECHO ^|~ Action Menu :                                  ~^|
ECHO ^|--------------------------------------------------^|
ECHO ^|~ 1. Check and install latest updater version    ~^|
ECHO ^|~ 2. Download from github                        ~^|
ECHO ^|~ 3. Install latest version (v%latestversion%)      ~^|
ECHO ^|~ 4. Install previous version (v%previousversion%)    ~^|
ECHO ^|~ 5. Install latest development version          ~^|
ECHO ^|~ 6. Quit                                        ~^|
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
    CD ../
    REN WashInnGarageUpdater-%updaterversion% WashInnGarageUpdater
    CD WashInnGarageUpdater

    ECHO Checking -^> https://github.com/vkr16/WashInnGarageUpdater
    git reset --hard
    git clean -f
    git pull origin main
    DEL setup.bat
    
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
    git checkout %latestbranch%
    cd ../WashInnGarageUpdater
        
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

IF %action%==3 (
    CLS
    ECHO Checking -^> https://github.com/vkr16/WashInnGarage
    cd ../WashInnGarage
    ECHO Updating....
    ECHO.
    git checkout %latestbranch% || git checkout -b %latestbranch%
    git reset --hard
    git pull origin %latestbranch%
    cd ../WashInnGarageUpdater
    
    ECHO "  _    _           _       _           _  "
    ECHO " | |  | |         | |     | |         | | "
    ECHO " | |  | |_ __   __| | __ _| |_ ___  __| | "
    ECHO " | |  | | '_ \ / _` |/ _` | __/ _ \/ _` | "
    ECHO " | |__| | |_) | (_| | (_| | ||  __/ (_| | "
    ECHO "  \____/| .__/ \__,_|\__,_|\__\___|\__,_| "
    ECHO "        | |                               "
    ECHO "        |_|                               "

    PAUSE
    CLS
    GOTO TOP
)

IF %action%==4 (
    CLS
    ECHO Checking -^> https://github.com/vkr16/WashInnGarage
    cd ../WashInnGarage
    ECHO Updating....
    ECHO.
    git checkout %previousbranch% || git checkout -b %previousbranch%
    git reset --hard
    git pull origin %previousbranch%
    cd ../WashInnGarageUpdater
    
    ECHO "  _    _           _       _           _  "
    ECHO " | |  | |         | |     | |         | | "
    ECHO " | |  | |_ __   __| | __ _| |_ ___  __| | "
    ECHO " | |  | | '_ \ / _` |/ _` | __/ _ \/ _` | "
    ECHO " | |__| | |_) | (_| | (_| | ||  __/ (_| | "
    ECHO "  \____/| .__/ \__,_|\__,_|\__\___|\__,_| "
    ECHO "        | |                               "
    ECHO "        |_|                               "

    PAUSE
    CLS
    GOTO TOP
)

IF %action%==5 (
    CLS
    ECHO Checking -^> https://github.com/vkr16/WashInnGarage
    cd ../WashInnGarage
    ECHO Updating....
    ECHO.
    git checkout main
    git reset --hard
    git pull origin main
    cd ../WashInnGarageUpdater
    
    ECHO "  _    _           _       _           _  "
    ECHO " | |  | |         | |     | |         | | "
    ECHO " | |  | |_ __   __| | __ _| |_ ___  __| | "
    ECHO " | |  | | '_ \ / _` |/ _` | __/ _ \/ _` | "
    ECHO " | |__| | |_) | (_| | (_| | ||  __/ (_| | "
    ECHO "  \____/| .__/ \__,_|\__,_|\__\___|\__,_| "
    ECHO "        | |                               "
    ECHO "        |_|                               "

    PAUSE
    CLS
    GOTO TOP
)

IF %action%==6 (
    EXIT /B
)

PAUSE
:END