rem Запуск 1С консоли, на сервере где установлено несколько версий сервера приложений

rem задаем версию консоли 1С
set ver1c=8.3.10.2299

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{A42674D4-2D97-4988-A81D-2C113CC42A95}\InprocServer32" /f /ve /t REG_SZ /d "C:\Program Files\1cv8\%ver1c%\bin\radmin.dll"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{A42674D4-2D97-4988-A81D-2C113CC42A95}\InprocServer32" /f /v ThreadingModel /t REG_SZ /d Both

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{803144C8-17E6-4926-86C5-C195B6D226D4}\InprocServer32" /f /ve /t REG_SZ /d "C:\Program Files\1cv8\%ver1c%\bin\radmin.dll"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{803144C8-17E6-4926-86C5-C195B6D226D4}\InprocServer32" /f /v ThreadingModel /t REG_SZ /d Both

mmc /s "C:\Program Files\1cv8\common\1CV8 Servers (x86-64).msc"
