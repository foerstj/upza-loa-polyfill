:: name of map
set map=upza-loa-polyfill-demo

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%

:: Compile dsmap & dsres files
call "%bits%\build.bat" %*

::pause

:: Run it!
"%ds%\DungeonSiege.exe" nointro=true map=%map%

:: Cleanup resources so as not to confuse Siege Editor
call "%bits%\cleanup.bat" %*
