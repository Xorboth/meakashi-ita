::
:: Set variables
::

set /P version= Enter the version number: 

set tempFolder=temp
set outputFolder=output

set higurashiData=HigurashiEp05_Data

set changelog=cambiamenti.txt

set readme=leggimi.txt
set readmeInstaller=leggimi_07th_mod_installer.txt
set readmeManual=leggimi_manuale.txt

set assets=sharedassets0.assets
set assetsWindowsSteamGogMangaGamer=sharedassets0.assets
set assetsWindowsOldSteamGogMangaGamer=Windows-Old-Steam-GOG-MG-5.5.3p1.languagespecificassets
set assetsLinuxMacOsSteamGogMangaGamer=LinuxMac-Steam-GOG-MG-5.5.3p3.languagespecificassets
set assetsLinuxMacOsOldSteamGogMangaGamer=LinuxMac-Old-Steam-GOG-MG-5.5.3p1.languagespecificassets

set output07th=meakashi_ita_07th_mod_installer.7z
set outputWindowsSteamGogMangaGamer=meakashi_ita_windows_steam_gog_mg_%version%.7z
set outputWindowsOldSteamGogMangaGamer=meakashi_ita_windows_old_steam_gog_mg_%version%.7z
set outputLinuxMacOsSteamGogMangaGamer=meakashi_ita_linux_macos_steam_gog_mg_%version%.7z
set outputLinuxMacOsOldSteamGogMangaGamer=meakashi_ita_linux_macos_old_steam_gog_mg_%version%.7z


::
:: Create folders
::

rmdir /Q /S .\%tempFolder%
md .\%tempFolder%

md .\%outputFolder%


::
:: Delete old archives
::

del .\%outputFolder%\%output07th%
del .\%outputFolder%\%outputWindowsSteamGogMangaGamer%
del .\%outputFolder%\%outputWindowsOldSteamGogMangaGamer%
del .\%outputFolder%\%outputLinuxMacOsSteamGogMangaGamer%
del .\%outputFolder%\%outputLinuxMacOsOldSteamGogMangaGamer%


::
:: Create 07th archive
::

robocopy ..\%higurashiData% .\%tempFolder%\%higurashiData% /E /MIR
copy ..\%changelog% .\%tempFolder%\%changelog%
copy ..\%readmeInstaller% .\%tempFolder%\%readme%

7za a .\%outputFolder%\%output07th% .\%tempFolder%\* -ssw -mx9


::
:: Initialize common manual archive
::

del .\%tempFolder%\%readme%

copy ..\%readmeManual% .\%tempFolder%\%readme%


::
:: Create Windows Steam/GOG/MangaGamer manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsOldSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsOldSteamGogMangaGamer%

copy ..\%higurashiData%\%assetsWindowsSteamGogMangaGamer% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputWindowsSteamGogMangaGamer% .\%tempFolder%\* -ssw -mx9


::
:: Create Windows Old Steam/GOG/MangaGamer manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsOldSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsOldSteamGogMangaGamer%

copy ..\%higurashiData%\%assetsWindowsOldSteamGogMangaGamer% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputWindowsOldSteamGogMangaGamer% .\%tempFolder%\* -ssw -mx9


::
:: Create Linux/MacOS Steam/GOG/MangaGamer manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsOldSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsOldSteamGogMangaGamer%

copy ..\%higurashiData%\%assetsLinuxMacOsSteamGogMangaGamer% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputLinuxMacOsSteamGogMangaGamer% .\%tempFolder%\* -ssw -mx9


::
:: Create Linux/MacOS Old Steam/GOG/MangaGamer manual archive
::

del .\%tempFolder%\%higurashiData%\%assets%
del .\%tempFolder%\%higurashiData%\%assetsWindowsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsWindowsOldSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsSteamGogMangaGamer%
del .\%tempFolder%\%higurashiData%\%assetsLinuxMacOsOldSteamGogMangaGamer%

copy ..\%higurashiData%\%assetsLinuxMacOsOldSteamGogMangaGamer% .\%tempFolder%\%higurashiData%\%assets%

7za a .\%outputFolder%\%outputLinuxMacOsOldSteamGogMangaGamer% .\%tempFolder%\* -ssw -mx9


::
:: Remove temp files
::

rmdir /Q /S .\%tempFolder%