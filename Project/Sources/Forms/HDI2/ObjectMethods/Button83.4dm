
$selMode:=LISTBOX Get property:C917(*;"LB3_Col2";lk truncate:K53:37)
Case of 
	: ($selMode=lk without ellipsis:K53:64)
		vResult:="Without ellipsis"
	: ($selMode=lk with ellipsis:K53:65)
		vResult:="With ellipsis"
	Else 
		vResult:="???"
End case 