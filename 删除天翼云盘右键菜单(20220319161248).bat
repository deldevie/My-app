@echo off
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo 请使用右键管理员身份运行！&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL

reg delete HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\eDriveAppExt /va /f
reg delete HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\eDriveAppExt /va /f
reg delete HKEY_CLASSES_ROOT\Directory\shellex\ContextMenuHandlers\eDriveAppExt /va /f
reg delete HKEY_CLASSES_ROOT\Drive\ShellEx\ContextMenuHandlers\eDriveAppExt /va /f
reg delete HKEY_CLASSES_ROOT\Folder\shellex\ContextMenuHandlers\eDriveAppExt /va /f
reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{A919F047-28EA-4F32-98EB-5C280FC9EB76} /va /f
echo 操作完毕,按任意键退出
pause