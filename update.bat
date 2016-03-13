@echo off

rem **************************************************************************
rem *
rem *            WinLIRC plug-in for jetAudio
rem *
rem *            Copyright (c) 2016 Tim De Baets
rem *
rem **************************************************************************
rem *
rem * Licensed under the Apache License, Version 2.0 (the "License");
rem * you may not use this file except in compliance with the License.
rem * You may obtain a copy of the License at
rem *
rem *     http://www.apache.org/licenses/LICENSE-2.0
rem *
rem * Unless required by applicable law or agreed to in writing, software
rem * distributed under the License is distributed on an "AS IS" BASIS,
rem * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem * See the License for the specific language governing permissions and
rem * limitations under the License.
rem *
rem **************************************************************************
rem *
rem * Script to update the repository to the latest changes
rem *
rem **************************************************************************

setlocal

for /F %%i in ('dir /b /a "common\*"') do (
    rem common submodule folder not empty, ok
    goto commonok
)

echo The common subdirectory is still empty; did you run postclone.bat yet?
goto failed

:commonok

call .\common\Scripts\updaterepo.bat %*
if errorlevel 1 goto failed

goto exit

:failed
exit /b 1

:exit
