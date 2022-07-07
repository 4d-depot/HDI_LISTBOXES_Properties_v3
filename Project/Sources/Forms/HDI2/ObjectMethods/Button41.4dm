
$selMode:=LISTBOX Get property:C917(*;"LB4";lk extra rows:K53:38)
Case of 
	: ($selMode=lk hide:K53:63)
		vResult:="Hidden"
	: ($selMode=lk display:K53:62)
		vResult:="Displayed"
	Else 
		vResult:="???"
End case 