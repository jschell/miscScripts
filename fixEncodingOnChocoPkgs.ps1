$adjustFiles = gci \github\chocolateypkgs -recurse -filter *ps1
$adjustFiles += gci \github\chocolateypkgs -recurse -filter *nuspec
foreach($file in $adjustFiles)
{
    $fileContents = get-content $file.fullname
    [System.IO.File]::WriteAllLines($file.fullname, $fileContents)
}

