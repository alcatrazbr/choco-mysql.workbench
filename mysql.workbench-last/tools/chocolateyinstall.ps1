$packageName = 'mysql.workbench-last'
$url = 'http://xqx.com.br/public/mysql-workbench-community-6.3.10-winx64.msi'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  silentArgs    = "/passive /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  url           = $url
}

Install-ChocolateyPackage @packageArgs