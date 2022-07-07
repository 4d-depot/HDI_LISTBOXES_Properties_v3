C_TEXT:C284(vResult)

Case of 
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(col1; 0)
		ARRAY REAL:C219(col2; 0)
		ARRAY DATE:C224(col3; 0)
		ALL RECORDS:C47([TEST:1])
		SELECTION TO ARRAY:C260([TEST:1]Name:2; col1)
		SELECTION TO ARRAY:C260([TEST:1]Value:3; col2)
		SELECTION TO ARRAY:C260([TEST:1]Birthday:4; col3)
		
		
		// P12
		ARRAY LONGINT:C221(col4; 0)  // num or checkbox
		ARRAY LONGINT:C221(col5; 0)  // num or checkbox
		
		APPEND TO ARRAY:C911(col4; -4)  //semi-checked disabled
		APPEND TO ARRAY:C911(col4; -3)  //checked disabled
		APPEND TO ARRAY:C911(col4; -2)  // unchecked disabled
		APPEND TO ARRAY:C911(col4; -1)  // invisible
		APPEND TO ARRAY:C911(col4; 0)  // unchecked
		APPEND TO ARRAY:C911(col4; 1)  // checked
		APPEND TO ARRAY:C911(col4; 2)  // semi-checked
		
		COPY ARRAY:C226(col4; col5)
		
		ARRAY TEXT:C222(_Pages; 0)
		
		APPEND TO ARRAY:C911(_Pages; "Selection mode")  //1
		APPEND TO ARRAY:C911(_Pages; "Column resizing mode")  //2
		APPEND TO ARRAY:C911(_Pages; "Truncate")  //3
		APPEND TO ARRAY:C911(_Pages; "Extra rows")  //4
		APPEND TO ARRAY:C911(_Pages; "Allow wordwrap")  //5
		APPEND TO ARRAY:C911(_Pages; "Column resizable")  //6
		APPEND TO ARRAY:C911(_Pages; "Hide system highlight")  //7
		APPEND TO ARRAY:C911(_Pages; "Row height unit")  //8
		APPEND TO ARRAY:C911(_Pages; "Double click on row")  //9
		APPEND TO ARRAY:C911(_Pages; "Detail form name")  //10
		APPEND TO ARRAY:C911(_Pages; "Sortable")  //11
		APPEND TO ARRAY:C911(_Pages; "Display type")  //12
		APPEND TO ARRAY:C911(_Pages; "Background color expression")  //13
		APPEND TO ARRAY:C911(_Pages; "Font color expression")  //14
		APPEND TO ARRAY:C911(_Pages; "Font style expression")  //15
		APPEND TO ARRAY:C911(_Pages; "Column min width")  //16
		APPEND TO ARRAY:C911(_Pages; "Column max width")  //17
		APPEND TO ARRAY:C911(_Pages; "Highlight set")  //18
		APPEND TO ARRAY:C911(_Pages; "Named selection")  //19
		APPEND TO ARRAY:C911(_Pages; "Single-Click Edit")  //20
		APPEND TO ARRAY:C911(_Pages; "Multi-Style")  //21
		
		APPEND TO ARRAY:C911(_Pages; "Display footer")  //22
		APPEND TO ARRAY:C911(_Pages; "Display header")  //23
		APPEND TO ARRAY:C911(_Pages; "Hor scrollbar width")  //24
		APPEND TO ARRAY:C911(_Pages; "Ver scrollbar height")  //25
		
		APPEND TO ARRAY:C911(_Pages; "Movable rows")  //26
		
		APPEND TO ARRAY:C911(_Pages; "Horizontal padding * v19 R6")  //27
		APPEND TO ARRAY:C911(_Pages; "Vertical padding * v19 R6")  //28
		
		$n:=Size of array:C274(_Pages)
		
		
		
		
		// temporaire
		//For ($i;1;$n)
		//_Pages{$i}:=_Pages{$i}+" ("+String($i;"00")+")"
		//End for 
		
		ARRAY BOOLEAN:C223(LBPage; 0)
		ARRAY LONGINT:C221(_FontColor; 0)
		ARRAY LONGINT:C221(_FontStyle; 0)
		
		ARRAY BOOLEAN:C223(LBPage; $n)
		ARRAY LONGINT:C221(_FontColor; $n)
		ARRAY LONGINT:C221(_FontStyle; $n)
		ARRAY LONGINT:C221(_FontBackground; $n)
		
		For ($i; 1; $n)
			_FontBackground{$i}:=0x00FFFFFF
		End for 
		
		_Pages:=1
		_FontColor{_Pages}:=0x00CDE2FF
		_FontBackground{_Pages}:=0x008F9EB2
		_FontStyle{_Pages}:=Bold:K14:2
		
		LBPage{_Pages}:=True:C214
		
		vPageNumber:=1
		
		vResult:=""
		
		// P7
		vRowsHeight:=0
		
		// P8
		$n:=Size of array:C274(col1)
		ARRAY LONGINT:C221(_Height; $n)
		
		//P10
		vFormNameSet:="Input_B"
		
		//  P18
		CREATE EMPTY SET:C140([TEST:1]; "$SetA")
		CREATE EMPTY SET:C140([TEST:1]; "$SetB")
		
		// P4 & P19
		
		QUERY:C277([TEST:1]; [TEST:1]Name:2<"G")
		ORDER BY:C49([TEST:1]; [TEST:1]Name:2; >)
		COPY NAMED SELECTION:C331([TEST:1]; "SelA")
		
		QUERY:C277([TEST:1]; [TEST:1]Name:2>="G")
		ORDER BY:C49([TEST:1]; [TEST:1]Name:2; <)
		COPY NAMED SELECTION:C331([TEST:1]; "SelB")
		
		
		ALL RECORDS:C47([TEST:1])
		
		// Page 27/28
		(OBJECT Get pointer:C1124(Object named:K67:5; "LB25_Footer2"))->:="Total:"
		(OBJECT Get pointer:C1124(Object named:K67:5; "LB26_Footer2"))->:="Total:"
		
		SET TIMER:C645(-1)
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
		LISTBOX SET ROW FONT STYLE:C1268(*; "LBPage"; 27; Bold:K14:2)
		LISTBOX SET ROW FONT STYLE:C1268(*; "LBPage"; 28; Bold:K14:2)
		
		LISTBOX SET ROW COLOR:C1270(*; "LBPage"; 27; "DarkBlue"; lk font color:K53:24)
		LISTBOX SET ROW COLOR:C1270(*; "LBPage"; 28; "DarkBlue"; lk font color:K53:24)
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		vPageNumber:=FORM Get current page:C276
		
		vResult:=""
		
		vResult1:=0
		vResult2:=0
		vResult3:=0
		vResult4:=0
		
		
End case 


