
$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/getsentry/sentry-cli/releases/download/2.23.0/sentry-cli-Windows-i686.exe'
$url64      = 'https://github.com/getsentry/sentry-cli/releases/download/2.23.0/sentry-cli-Windows-x86_64.exe'

$packageArgs = @{
  PackageName   = $env:ChocolateyPackageName
  FileFullPath  = "$toolsDir\sentry-cli.exe"
  url           = $url
  url64bit      = $url64
  checksum      = 'A6CB2266418F418DF0CE88F16086BBB60090805B9A5D38ABEE8F6AE1F7EBA25F'
  checksumType  = 'sha256'
  checksum64    = 'BC51A87A60FA13A619ECAA93F9D442AE7E638A1718CB4616C6595CE7AB02AB25'
  checksumType64= 'sha256'
}


Get-ChocolateyWebFile @packageArgs

