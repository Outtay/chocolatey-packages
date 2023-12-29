$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://www.ncftp.com/downloads/ncftp/binaries/Setup%20NcFTP%203.2.6.msi'

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  url           = $url
  installerType = 'MSI'
  checksum      = 'B034C6C11CB2B888733E047AE9DF494C8255E3D9DDFD0CBB2A6CCD98B02C79F2'
  checksumType  = 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`"" # ALLUSERS=1 DISABLEDESKTOPSHORTCUT=1 ADDDESKTOPICON=0 ADDSTARTMENU=0
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
