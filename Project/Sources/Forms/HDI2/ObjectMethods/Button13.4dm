C_LONGINT:C283($result)

If (Shift down:C543)
	$result:=LISTBOX Get property:C917(*;"P6";lk column resizable:K53:40)  // this property is a COLUMN property -> error
Else 
	$result:=LISTBOX Get property:C917(*;"P6_Col1";lk column resizable:K53:40)
End if 

vResult:=Choose:C955($result;"No";"Yes")


