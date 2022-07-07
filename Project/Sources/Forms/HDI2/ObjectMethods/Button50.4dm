C_LONGINT:C283($display)
$display:=LISTBOX Get property:C917(*;"LB12_Col1";lk display type:K53:46)

Case of 
	: ($display=lk three states checkbox:K53:56)
		vResult:="three states"
		
	: ($display=lk numeric format:K53:55)
		vResult:="numeric format"
		
	Else 
		vResult:="???"
End case 
