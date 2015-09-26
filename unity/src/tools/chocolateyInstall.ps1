﻿$version = "5.2.0";
$versionName = "5.2.0f3";
$buildName = "e7947df39b5c";
$packageName = 'unity';
$installerType = 'exe';
$url = "http://netstorage.unity3d.com/unity/{0}/Windows32EditorInstaller/UnitySetup32-{1}.exe" -f $buildName,$versionName;
$url64bit = "http://netstorage.unity3d.com/unity/{0}/Windows64EditorInstaller/UnitySetup64-{1}.exe" -f $buildName,$versionName;
$silentArgs = '/S';
$validExitCodes = @(0);

Install-ChocolateyPackage -packageName $packageName -fileType $installerType -silentArgs $silentArgs -url $url -url64bit $url64bit -validExitCodes $validExitCodes;
