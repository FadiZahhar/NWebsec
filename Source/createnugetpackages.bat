@REM *************CORE**************
@pushd NWebsec.Core

msbuild NWebsec.Core.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v3.5 /p:OutputPath="d:\nuget\nwebsec.corestage\lib\35" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.Core.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx
msbuild NWebsec.Core.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v4.0 /p:OutputPath="d:\nuget\nwebsec.corestage\lib\40" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.Core.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx
msbuild NWebsec.Core.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v4.5 /p:OutputPath="d:\nuget\nwebsec.corestage\lib\45" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.Core.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx

@rd /s /q d:\nuget\nwebsec.core
@xcopy /f /y d:\nuget\nwebsec.corestage\lib\35\NWebsec.Core.dll d:\nuget\nwebsec.core\lib\35\
@xcopy /f /y d:\nuget\nwebsec.corestage\lib\35\NWebsec.Core.xml d:\nuget\nwebsec.core\lib\35\
@xcopy /f /y d:\nuget\nwebsec.corestage\lib\40\NWebsec.Core.dll d:\nuget\nwebsec.core\lib\40\
@xcopy /f /y d:\nuget\nwebsec.corestage\lib\40\NWebsec.Core.xml d:\nuget\nwebsec.core\lib\40\
@xcopy /f /y d:\nuget\nwebsec.corestage\lib\45\NWebsec.Core.dll d:\nuget\nwebsec.core\lib\45\
@xcopy /f /y d:\nuget\nwebsec.corestage\lib\45\NWebsec.Core.xml d:\nuget\nwebsec.core\lib\45\
@xcopy /f /y NWebsec.Core.nuspec d:\nuget\nwebsec.core\
@popd

@pushd d:\nuget\nwebsec.core
nuget.exe pack
@xcopy /f /y *.nupkg D:\nuget\feed\
@popd

@REM *************OWIN**************
@pushd NWebsec.Owin

msbuild NWebsec.Owin.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v4.5 /p:OutputPath="d:\nuget\nwebsec.owinstage\lib\45" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.Owin.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx

@rd /s /q d:\nuget\nwebsec.owin
@xcopy /f /y d:\nuget\nwebsec.owinstage\lib\45\NWebsec.Owin.dll d:\nuget\nwebsec.owin\lib\45\
@xcopy /f /y d:\nuget\nwebsec.owinstage\lib\45\NWebsec.Owin.xml d:\nuget\nwebsec.owin\lib\45\
@xcopy /f /y NWebsec.Owin.nuspec d:\nuget\nwebsec.owin\
@popd

@pushd d:\nuget\nwebsec.owin
nuget.exe pack
@xcopy /f /y *.nupkg D:\nuget\feed\
@popd

@REM *************NWebsec**************

@pushd NWebsec

msbuild NWebsec.Classic.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v3.5 /p:OutputPath="d:\nuget\nwebsecstage\lib\35" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx
msbuild NWebsec.Classic.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v4.0 /p:OutputPath="d:\nuget\nwebsecstage\lib\40" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx
msbuild NWebsec.Classic.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v4.5 /p:OutputPath="d:\nuget\nwebsecstage\lib\45" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx

@rd /s /q d:\nuget\nwebsec
@xcopy /f /y d:\nuget\nwebsecstage\lib\35\NWebsec.dll d:\nuget\nwebsec\lib\35\
@xcopy /f /y d:\nuget\nwebsecstage\lib\35\NWebsec.xml d:\nuget\nwebsec\lib\35\
@xcopy /f /y d:\nuget\nwebsecstage\lib\40\NWebsec.dll d:\nuget\nwebsec\lib\40\
@xcopy /f /y d:\nuget\nwebsecstage\lib\40\NWebsec.xml d:\nuget\nwebsec\lib\40\
@xcopy /f /y d:\nuget\nwebsecstage\lib\45\NWebsec.dll d:\nuget\nwebsec\lib\45\
@xcopy /f /y d:\nuget\nwebsecstage\lib\45\NWebsec.xml d:\nuget\nwebsec\lib\45\
@xcopy /f /y NWebsec.nuspec d:\nuget\nwebsec\
@xcopy /f /y web.config.transform d:\nuget\nwebsec\content\
@xcopy /f /y /s d:\nuget\nwebsecstage\lib\40\ConfigurationSchema d:\nuget\nwebsec\content\NWebsecConfig\
@popd

@pushd d:\nuget\nwebsec
nuget.exe pack
@xcopy /f /y *.nupkg D:\nuget\feed\
@popd

@REM *************Nwebsec.Mvc**************

@pushd NWebsec.Mvc

msbuild NWebsec.Mvc.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v4.0 /p:OutputPath="d:\nuget\nwebsec.mvcstage\lib\40" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.Mvc.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx
msbuild NWebsec.Mvc.csproj /p:Configuration=Release /p:TargetFrameworkVersion=v4.5 /p:OutputPath="d:\nuget\nwebsec.mvcstage\lib\45" /t:Rebuild /v:q /p:DocumentationFile="NWebsec.Mvc.xml" /p:NoWarn=1591 /p:SignAssembly=true /p:AssemblyOriginatorKeyFile=C:\NWebsecKey\NWebsec.pfx

@rd /s /q d:\nuget\nwebsec.mvc
@xcopy /f /y d:\nuget\nwebsec.mvcstage\lib\40\NWebsec.Mvc.dll d:\nuget\nwebsec.mvc\lib\40\
@xcopy /f /y d:\nuget\nwebsec.mvcstage\lib\40\NWebsec.Mvc.xml d:\nuget\nwebsec.mvc\lib\40\
@xcopy /f /y d:\nuget\nwebsec.mvcstage\lib\40\NWebsec.Mvc.dll d:\nuget\nwebsec.mvc\lib\45\
@xcopy /f /y d:\nuget\nwebsec.mvcstage\lib\40\NWebsec.Mvc.xml d:\nuget\nwebsec.mvc\lib\45\

@xcopy /f /y NWebsec.Mvc.nuspec d:\nuget\nwebsec.Mvc\
@popd

@pushd d:\nuget\nwebsec.mvc
nuget.exe pack
@xcopy /f /y *.nupkg D:\nuget\feed\
@popd


@echo "Now go to d:\nuget\nwebsec\, update nuspec version number, and publish! :)"

