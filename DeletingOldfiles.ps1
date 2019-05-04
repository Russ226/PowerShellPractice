# delete files in dir based on path

param(
    [String]$Path

)

if(Test-Path $Path -Container){
    $Daysback = "-30"
 
    $CurrentDate = Get-Date
    $DatetoDelete = $CurrentDate.AddDays($Daysback)
    Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item

}

