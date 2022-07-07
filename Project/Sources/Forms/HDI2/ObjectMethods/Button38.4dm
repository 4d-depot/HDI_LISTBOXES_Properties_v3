If (Shift down:C543)
	$selMode:=LISTBOX Get property:C917(*;"xxxx";lk selection mode:K53:35)
Else 
	$selMode:=LISTBOX Get property:C917(*;"LB1";lk selection mode:K53:35)
End if 

Case of 
	: ($selMode=lk none:K53:57)
		vResult:="lk none"
	: ($selMode=lk single:K53:58)
		vResult:="lk single"
	: ($selMode=lk multiple:K53:59)
		vResult:="lk multiple"
	Else 
		vResult:="???"
End case 