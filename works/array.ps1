
$cwd = Get-Location
$files = Get-ChildItem "$($cwd.Path)\drawdata\history_data\*.*" -Recurse
foreach($file in $files){
    $expa = $file.name.split(".")[-1]
    $dir = "organized\$($file.LastWriteTime.Year)\$($file.LastWriteTime.Month)"
    New-Item $dir -ItemType Directory -force
    $filepath = "$dir\$($file.name)"
    $flag = Test-Path $filepath
    if($flag -eq $False){
        Move-item $file.fullname $filepath
    }
}
