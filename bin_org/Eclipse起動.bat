@echo off
if "%OS%" == "Windows_NT" setlocal

rem ###################################################################
rem
rem	Eclipse���N������o�b�`�t�@�C��
rem
rem		2020-03-09  H.Hayashi(neutral)
rem
rem
rem ###################################################################

rem ===================================================================
rem 	Eclipse�֘A�̊��ݒ�
rem ===================================================================

rem -----------------------------------------------------------
rem 	�i�P�jEclipse���g�p���郏�[�N�X�y�[�X
rem -----------------------------------------------------------

	 	set ECLIPSE_WORKSPACE=C:\MyProj\GitRepos\ntr_seminar\001_abs_flight\workspace

rem -----------------------------------------------------------
rem 	�i�Q�jEclipse���C���X�g�[�������t�H���_
rem -----------------------------------------------------------

		set ECLIPSE_HOME=C:\pleiades2019\eclipse


rem -----------------------------------------------------------
rem 	�i�R�jEclipse�N������JavaVM�p����
rem -----------------------------------------------------------

	rem	set ECLIPSE_VMARGS=-vmargs -Xms720m -Xmx1700m
		set ECLIPSE_VMARGS=


rem ===================================================================
rem 	JAVA_HOME�̐ݒ�
rem ===================================================================

rem -----------------------------------------------------------
rem 	�i�P�jJAVA_HOME
rem -----------------------------------------------------------

		set JAVA_HOME=C:\pleiades2019\java\8


rem -----------------------------------------------------------
rem 	�i�Q�jJAVA_HOME�ɑ΂���PATH
rem -----------------------------------------------------------

		set path=%JAVA_HOME%\bin;%path%


rem ===================================================================
rem 	�ݒ�̕\��
rem ===================================================================

echo ----------------------------------------------------------
echo �ȉ��̊��ϐ���ݒ肵�܂����B
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
rem 	Eclipse�̋N��
rem ===================================================================


	cd %ECLIPSE_HOME%


echo	start %ECLIPSE_HOME%\eclipse.exe -data "%ECLIPSE_WORKSPACE%" %ECLIPSE_VMARGS%

rem pause
	start %ECLIPSE_HOME%\eclipse.exe -data "%ECLIPSE_WORKSPACE%" %ECLIPSE_VMARGS%

rem pause

