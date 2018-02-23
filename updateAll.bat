@set CUR_DIR=%~dp0
@cd %CUR_DIR%

@rem https://www.cnblogs.com/nicksheng/p/6201711.html
@git submodule init
@git submodule update
@git submodule foreach git pull

@for /f "delims=" %%i in ('dir /B /A:D "%CUR_DIR%"') do (
	@if not "%%i"==".git" (
		@cd /D %CUR_DIR%%%i
		@git checkout master
	)
)
@pause
