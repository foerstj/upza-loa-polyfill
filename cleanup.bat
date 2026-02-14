:: name of mod, case-sensitive
set mod_cs=UPZA LoA polyfill

:: path of DS installation
set ds=%DungeonSiege%

:: Cleanup resources so as not to confuse Siege Editor
del "%ds%\Resources\%mod_cs%.dsres"
del "%ds%\Maps\%mod_cs%.dsmap"
