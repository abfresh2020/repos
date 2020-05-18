@echo off
if "%OS%" == "Windows_NT" setlocal

rem ###################################################################
rem
rem	Eclipseを起動するバッチファイル
rem
rem		2020-03-09  H.Hayashi(neutral)
rem
rem
rem ###################################################################

rem ===================================================================
rem 	Eclipse関連の環境設定
rem ===================================================================

rem -----------------------------------------------------------
rem 	（１）Eclipseが使用するワークスペース
rem -----------------------------------------------------------

	 	set ECLIPSE_WORKSPACE=C:\MyProj\GitRepos\ntr_seminar\001_abs_flight\workspace

rem -----------------------------------------------------------
rem 	（２）Eclipseをインストールしたフォルダ
rem -----------------------------------------------------------

		set ECLIPSE_HOME=C:\pleiades2019\eclipse


rem -----------------------------------------------------------
rem 	（３）Eclipse起動時のJavaVM用引数
rem -----------------------------------------------------------

	rem	set ECLIPSE_VMARGS=-vmargs -Xms720m -Xmx1700m
		set ECLIPSE_VMARGS=


rem ===================================================================
rem 	JAVA_HOMEの設定
rem ===================================================================

rem -----------------------------------------------------------
rem 	（１）JAVA_HOME
rem -----------------------------------------------------------

		set JAVA_HOME=C:\pleiades2019\java\8


rem -----------------------------------------------------------
rem 	（２）JAVA_HOMEに対するPATH
rem -----------------------------------------------------------

		set path=%JAVA_HOME%\bin;%path%


rem ===================================================================
rem 	設定の表示
rem ===================================================================

echo ----------------------------------------------------------
echo 以下の環境変数を設定しました。
echo\
echo PATH = %PATH%
echo\
echo JAVA_HOME = %JAVA_HOME%
echo\
echo ECLIPSE_HOME      = %ECLIPSE_HOME%
echo\
echo ECLIPSE_VMARGS    = %ECLIPSE_VMARGS%
echo\
echo ECLIPSE_WORKSPACE = %ECLIPSE_WORKSPACE%
echo\
echo ----------------------------------------------------------


rem ===================================================================
rem 	Eclipseの起動
rem ===================================================================


	cd %ECLIPSE_HOME%


echo	start %ECLIPSE_HOME%\eclipse.exe -data "%ECLIPSE_WORKSPACE%" %ECLIPSE_VMARGS%

rem pause
	start %ECLIPSE_HOME%\eclipse.exe -data "%ECLIPSE_WORKSPACE%" %ECLIPSE_VMARGS%

rem pause

