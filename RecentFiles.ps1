# gets items in disk d
$diskDitem = Get-ChildItem -Path "D:\"| Sort-Object LastAccessTime -Descending 

$recentFiles = @()

foreach($item in $diskDitem){
    
    if ( Test-Path $item.FullName -PathType Container ){
        $cur = Get-ChildItem -Path $Item.FullName | Sort-Object { $_.LastWriteTime } -Descending  
        $recentFiles += $cur 
        # Write-Output $cur

    }
    
}
$recentFiles 

Write-Output $recentFiles

