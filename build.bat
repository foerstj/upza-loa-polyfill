:: name of mod, case-sensitive
set mod_cs=UPZA LoA polyfill

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

:: tank properties
set year=2026
set copyright=CC-BY-SA %year%
set title=%mod_cs%
set author=Johannes Förstner

:: Compile resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\art\bitmaps" "%tmp%\Bits\art\bitmaps" /S /xf *.psd
robocopy "%bits%\art\meshes" "%tmp%\Bits\art\meshes" /S
robocopy "%bits%\sound" "%tmp%\Bits\sound" /S
robocopy "%bits%\world\contentdb\components" "%tmp%\Bits\world\contentdb\components" /S /xf *.lqd20
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\Resources\%mod_cs%.dsres" -copyright "%copyright%" -title "%title%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
