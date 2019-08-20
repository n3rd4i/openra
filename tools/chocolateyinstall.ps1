$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/OpenRA/OpenRA/releases/download/release-20190314/OpenRA-release-20190314.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  softwareName  = 'openra*'
  checksum      = 'E0D51ABD55098E4125B826AD03C092DAD620E4A1674A7B75CCC53708A3BEE73F'
  checksumType  = 'sha256'
  silentArgs    = "/S /Q"
  validExitCodes= @(0, 3010, 1641)
}
Install-ChocolateyPackage @packageArgs
