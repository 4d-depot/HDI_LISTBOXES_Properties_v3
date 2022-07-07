If (Shift down:C543)
	$selMode:=LISTBOX Get property:C917(*;"LB2_Col1";lk resizing mode:K53:36)  // error this is a lisbox property
Else 
	$selMode:=LISTBOX Get property:C917(*;"LB2";lk resizing mode:K53:36)
End if 

Case of 
	: ($selMode=lk manual:K53:60)
		vResult:="lk manual"
	: ($selMode=lk automatic:K53:61)
		vResult:="lk automatic"
	Else 
		vResult:="???"
End case 