FROM mcr.microsoft.com/windows:20H2

ADD "https://github.com/wixtoolset/wix3/releases/download/wix3112rtm/wix311-binaries.zip" "C:\\TEMP\\wix311-binaries.zip"

RUN powershell -Command "Expand-Archive -LiteralPath C:\TEMP\wix311-binaries.zip -DestinationPath C:\wix-toolset -Force" 
RUN setx /M PATH "%PATH%;C:\wix-toolset"

ENTRYPOINT [ "powershell" ]
