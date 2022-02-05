$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = 'javadecompiler-gui'
  url           = 'https://github.com/java-decompiler/jd-gui/releases/download/v1.6.6/jd-gui-windows-1.6.6.zip'
  checksum      = '79c231399d3d39d14fce7607728336acb47a6e02e9e1c5f2fa16e2450c0c46cb'
  checksumType  = 'sha256'
  unzipLocation = $toolsDir
}

if (Test-ProcessAdminRights)
{
    $specialFolder = [Environment+SpecialFolder]::CommonPrograms
}
else
{
    $specialFolder = [Environment+SpecialFolder]::Programs
}
$menuPrograms = [Environment]::GetFolderPath($specialFolder)
$shotrcutArgs = @{
  shortcutFilePath = "$menuPrograms\Java Decompiler.lnk"
  targetPath       = "$toolsDir\jd-gui-windows-1.6.6\jd-gui.exe"
}

Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyShortcut @shotrcutArgs
