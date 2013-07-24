$packageName = 'xplorer2'
$fileType = 'exe'
$silentArgs = '/S'
$url = 'http://zabkat.com/xplorer2_lite_setup.exe'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url
