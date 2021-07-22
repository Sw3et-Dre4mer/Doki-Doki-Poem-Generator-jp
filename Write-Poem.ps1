<#
    Doki Doki Poem Generator!
    (c) 2021 Sweet Dreamer
#>


# Functions
function printPt($a,$b,$c){
    Write-Host "`nS Point:`t`t${a}"
    Write-Host "N Point:`t`t${b}"
    Write-Host "Y Point:`t`t${c}`n"
}

function countUp($sp,$np,$yp){
    $sp = $sp + [int]$_.sPoint
    $np = $np + [int]$_.nPoint
    $yp = $yp + [int]$_.yPoint
}


# Main Script
Write-Host "Welcome to the Literature Club!" -ForegroundColor Green
$mem = Read-Host "Who will you write a poem for?`n[0] Random`n[1] Sayori`n[2] Natsuki`n[3] Yuri`n[4] ???`n"
$words = gc -Path "poemwords.json" | ConvertFrom-Json

switch($mem){
    0{
    -join(
        $words[0..227] | Get-Random -Count 20 | % {
        Write-Host -NoNewline (${_}.word + ' ')
        . countUp $sp $np $yp
        }
    )
    printPt $sp $np $yp
    rv sp,np,yp
    }
	
    1{
    -join(
        $words[0..87] | Get-Random -Count 20 | % {
        Write-Host -NoNewline (${_}.word + ' ')
        . countUp $sp $np $yp
        }
    )
    printPt $sp $np $yp
    rv sp,np,yp
    }
	
    2{
    -join(
        $words[88..149] | Get-Random -Count 20 | % {
        Write-Host -NoNewline (${_}.word + ' ')
        . countUp $sp $np $yp
        }
    )
    printPt $sp $np $yp
    rv sp,np,yp
    }
	
    3{
    -join(
        $words[150..227] | Get-Random -Count 20 | % {
        Write-Host -NoNewline (${_}.word + ' ')
        . countUp $sp $np $yp
        }
    )
    printPt $sp $np $yp
    rv sp,np,yp
    }
	
    4{
    -join
        ((1..20) | %{$words[228..238].word | Get-Random} | % {Write-Host -NoNewline (${_} + ' ')}
    )
    }
    default{
        Write-Host Just Monika.`n -ForegroundColor Magenta
    }
}
