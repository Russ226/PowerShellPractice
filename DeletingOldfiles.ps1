# delete files in dir based on path

param(
    [String]$Path,
    [String]$Days
)



if(Test-Path $Path -PathType Container){

    $CurrentDate = Get-Date
    $DatetoDelete = $CurrentDate.AddDays($Days)
    Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item

    

}

