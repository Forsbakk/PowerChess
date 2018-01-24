$Board = New-Object 'object[,]' 8,8

Class Piece {
    [bool]$Alive=$true
    [string]$Mark
    [string]$Team
    [string]$Start
    [int]$sCol
    [int]$sRow
    [string]$pos
    [ValidateRange(0,8)][int]$cRow
    [ValidateRange(0,8)][int]$cCol
    
}

Class Pawn : Piece {
    Pawn([string]$pos) {
        $this.Start = $pos
        $this.sRow = $pos[0].ToString() - 1
        $this.sCol = Get-Col $pos[1]
    }
}

function Get-Col ([string]$col) {
    switch ($col) {
        "a" {  }
        "b" {  }
        "c" {  }
        "d" {  }
        "e" {  }
        "f" {  }
        "g" {  }
        "h" {  }
    }
}