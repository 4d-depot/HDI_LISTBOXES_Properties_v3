
$CR:=Char:C90(Carriage return:K15:38)

$setName:=LISTBOX Get property:C917(*;"LB18";lk highlight set:K53:66)

If ($setName#"")
	vResult:="highlight set: "+$setName
Else 
	vResult:="highlight set: none"
End if 

vResult:=vResult+$cr+$cr
vResult:=vResult+"$SetA: "+String:C10(Records in set:C195("$SetA"))+" records"+$cr
vResult:=vResult+"$SetB: "+String:C10(Records in set:C195("$SetB"))+" records"+$cr

