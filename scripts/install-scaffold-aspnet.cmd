set VERSION=0.1.0-dev
set DEFAULT_NUPKG_PATH=%userprofile%/.nuget/packages
set SRC_DIR=%cd%
set NUPKG=artifacts/packages/Debug/Shipping/
call taskkill /f /im dotnet.exe
call rd /Q /S artifacts
call dotnet pack tools\dotnet-scaffold-aspnet\dotnet-scaffold-aspnet.csproj -c Debug
call dotnet tool uninstall -g Microsoft.dotnet-scaffold-aspnet

call cd %DEFAULT_NUPKG_PATH%
call rd /Q /S Microsoft.dotnet-scaffold-aspnet
call rd /Q /S Microsoft.DotNet.Scaffolding.Helpers
call rd /Q /S Microsoft.DotNet.Scaffolding.ComponentModel

call cd  %SRC_DIR%/%NUPKG% 
call dotnet tool install -g Microsoft.dotnet-scaffold-aspnet --add-source %SRC_DIR%\%NUPKG% --version %VERSION%
call cd %SRC_DIR%