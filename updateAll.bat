@set CUR_DIR=%~dp0
@cd %CUR_DIR%

@rem git submodule foreach --recursive git submodule init 
@rem git submodule foreach --recursive git submodule update

@for /f "delims=" %%i in ('dir /B /A:D "%CUR_DIR%"') do (
	@cd %CUR_DIR%%%i
	@git checkout master
)
@pause
