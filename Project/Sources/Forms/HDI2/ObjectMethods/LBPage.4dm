Case of 
	: (Form event code:C388=On Selection Change:K2:29)
		
		$n:=Size of array:C274(_Pages)
		ARRAY LONGINT:C221(_fontStyle;0)
		ARRAY LONGINT:C221(_fontStyle;$n)
		
		ARRAY LONGINT:C221(_FontBackground;0)
		ARRAY LONGINT:C221(_FontBackground;$n)
		For ($i;1;$n)
			_FontBackground{$i}:=0x00FFFFFF
		End for 
		ARRAY LONGINT:C221(_FontColor;0)
		ARRAY LONGINT:C221(_FontColor;$n)
		
		_fontStyle{_Pages}:=Bold:K14:2
		_FontColor{_Pages}:=0x00CDE2FF
		_FontBackground{_Pages}:=0x008F9EB2
		
End case 
