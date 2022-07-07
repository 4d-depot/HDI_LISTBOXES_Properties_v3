C_TEXT:C284($selName)
$selName:=LISTBOX Get property:C917(*;"LB19";lk named selection:K53:67)

If ($selName#"")
	vResult:="Selecion name: "+$selName
Else 
	vResult:="Selecion name: none"
End if 
