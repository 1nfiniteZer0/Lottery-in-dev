@echo off

REM By: Aidan Biggs
REM AKA AT Vloggers
REM
REM Please do not claim this as your own.
REM
REM If you remove this it means you break the Code of Use found here: 
REM https://at-vloggers.weebly.com/code-of-use.html

if not exist LotteryFiles\ (
mkdir LotteryFiles
cd LotteryFiles
mkdir Users
mkdir Points
)
cd LotteryFiles
set /A lgedin=0
set usern=NOT LOGGED IN

:menu
cls
echo USER: %usern%
echo.
echo 1. SPIN
echo 2. POINTS
echo 3. LOGIN / CREATE ACCOUNT
echo 4. POINTS KEY
echo 5. EXIT
echo.
set /p sple=
if %sple% == 1 (
	if %lgedin% == 0 (
		cls
		echo You must be logged in to spin.
		echo.
		echo Press any key to go back to menu..
		pause >nul
		goto menu
	)
goto spin
)
if %sple% == 2 (
	if %lgedin% == 0 (
		cls
		echo You must be logged in to view points.
		echo.
		echo Press any key to go back to menu..
		pause >nul
		goto menu
	)
goto points
)
if %sple% == 3 (
	if %lgedin% == 1 (
		cls
		echo You are already logged in
		echo To logout, exit the window and reopen the program!
		echo.
		echo Press any key to go back to menu..
		pause >nul
		goto menu
	)
goto login
)
if %sple% == 4 (
	cls
	echo POINTS KEY:
	echo.
	echo Big Prize: 100 COINS
	echo Small Prize: 25 COINS
	echo No Win: 1 COIN
	echo.
	echo Press any key to go back to manu..
	pause >nul
	goto menu
)
exit

:spin
set /A n1=0
set /A n2=0
set /A n3=0
set /A num1=0
set /A num2=0
set /A num3=0
cls
echo ^|_______^|
echo ^|_%num1%_%num2%_%num3%_^|
echo ^|_______^|
echo.
echo Press any key to spin..
pause >nul
:ani
cls
set /A num1=1
set /A num2=3
set /A num3=5
echo ^|_______^|
echo ^|_%num1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=6
set /A num2=8
set /A num3=1
echo ^|_______^|
echo ^|_%num1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=8
set /A num2=7
set /A num3=3
echo ^|_______^|
echo ^|_%num1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=8
set /A num2=2
set /A num3=1
echo ^|_______^|
echo ^|_%num1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
set /A n1=%random% %%10
cls
echo ^|_______^|
echo ^|_%n1%_%num2%_%num3%_^|
echo ^|_______^|
cls
set /A num1=1
set /A num2=3
set /A num3=5
echo ^|_______^|
echo ^|_%n1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=6
set /A num2=8
set /A num3=1
echo ^|_______^|
echo ^|_%n1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=8
set /A num2=7
set /A num3=3
echo ^|_______^|
echo ^|_%n1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=8
set /A num2=2
set /A num3=1
echo ^|_______^|
echo ^|_%n1%_%num2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
set /A n2=%random% %%10
cls
echo ^|_______^|
echo ^|_%n1%_%n2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
echo ^|_______^|
echo ^|_%n1%_%n2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=1
set /A num2=3
set /A num3=5
echo ^|_______^|
echo ^|_%n1%_%n2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=6
set /A num2=8
set /A num3=1
echo ^|_______^|
echo ^|_%n1%_%n2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=8
set /A num2=7
set /A num3=3
echo ^|_______^|
echo ^|_%n1%_%n2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
cls
set /A num1=8
set /A num2=2
set /A num3=1
echo ^|_______^|
echo ^|_%n1%_%n2%_%num3%_^|
echo ^|_______^|
timeout 0 >nul
timeout 0 >nul
set /A n3=%random% %%10
cls
echo ^|_______^|
echo ^|_%n1%_%n2%_%n3%_^|
echo ^|_______^|
timeout 1 >nul
if %n1% == %n2% (
	if %n2% == %n3% (
		if %n1% == 0 (
			set /A win=2
		) else (
		set /A win=1
		)
	) else (
	set /A win=0
	)
) else (
set /A win=0
)
cls
echo ^|_______^|
echo ^|_%n1%_%n2%_%n3%_^|
echo ^|_______^|
echo.
if %win% == 2 (
	set /A points=%points%+100
	echo 
	echo You WON BIG!
	echo.
	echo Congratulations:
	echo You have won the JACKPOT!!
	echo.
	echo Here is your prize:
	echo 100 COINS!!
	echo.
)
if %win% == 1 (
	set /A points=%points%+25
	echo You WON SMALL!
	echo.
	echo Congratulations:
	echo You have won the Small Prize!!
	echo.
	echo Here is your prize:
	echo 25 COINS!!
	echo.
)
if %win% == 0 (
	set /A points=%points%+1
	cd Points
	echo %points% > %usern%.points
	cd ..
	echo You LOST..
	echo.
	echo Sorry:
	echo You did not win anything..
	echo.
	echo You will still get the prize below for playing:
	echo 1 COIN
	echo.
)
echo Press any key to go to menu..
pause >nul
goto menu

:points
cd Points
for /f "delims=" %%x in (%usern%.points) do set points=%%x
set /A points=%points%
cd ..
cls
echo Points for %usern%: %points%
echo.
echo Press any key to go to menu..
pause >nul
goto menu

:login
cls
echo 1. CREATE ACCOUNT
echo 2. LOGIN
echo.
set /p lc=
if %lc% == 1 goto create
if %lc% == 2 goto in
exit
:create
cls
echo ACCOUNT NAME:
set /p newau=
echo.
echo ACCOUNT PASSWORD:
set /p newap=
cd Users
echo %newap% > %newau%.user
cd ..
cd Points
echo 0 > %newau%.points
cd ..
echo.
echo DONE
echo Press any key to go to menu..
pause >nul
goto menu
if %lc% == 2 goto in
:in
cls
echo USERNAME:
set /p usern=
echo.
echo PASSWORD:
set /p pass=
cd Users
for /f "delims=" %%x in (%usern%.user) do set compass=%%x
cd ..
goto passcheck
exit
:passcheck
if %compass% == %pass% (
	set /A lgedin=1
	cd Points
	for /f "delims=" %%x in (%usern%.points) do set points=%%x
	set /A points=%points%
	cd ..
	set /A lgedin=1
	cls
	echo LOGGED IN
	echo Press any key to go to menu..
	pause >nul
	goto menu
) else ( 
	echo.
	echo INCORRECT USERNAME OR PASSWORD!
	echo.
	echo Press any key to try again..
	pause >nul
	goto login
)