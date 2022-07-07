
$Action:=LISTBOX Get property:C917(*;"LB9";lk double click on row:K53:43)
Case of 
	: ($Action=lk do nothing:K53:52)
		vResult:="Do nothing"
		
	: ($Action=lk edit record:K53:53)
		vResult:="Edit record"
		
	: ($Action=lk display record:K53:54)
		vResult:="Display record"
		
	Else 
		vResult:="???"
End case 


