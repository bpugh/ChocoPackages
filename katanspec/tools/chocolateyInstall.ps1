#gem install warmup
#gem install nokogiri

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$contentPath = ($scriptPath | Split-Path | Join-Path -ChildPath "content")
Write-Host $contentPath


# create vim directory
$vimdir = $Env:userprofile + "\.vim"
#$toolsPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$check = Test-Path -PathType Container $vimdir
if($check -eq $false){
    New-Item $vimdir -type Directory
}
$rakefile = $contentPath + "\Rakefile"
Copy-Item $rakefile $vimdir
Set-Location -Path $vimdir
Rake
