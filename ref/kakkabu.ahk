^=::
InputBox, conv, Kakkabu, Enter indo-arabic number to be converted
if conv is Number
	convert_to_babylonian(conv)
Else
	MsgBox,, Kakkabu Error, Error! Please enter a number in indo-arabic form without separators!
	; convert_to_arabic(conv)
Return

convert_to_babylonian(conv){
	buffer := conv//60
	if buffer > 0
	{
		convert_to_babylonian(buffer)
		Send {U+3000}
	}
	remainder := conv-(buffer*60)
	winkel := remainder//10
	if winkel = 5
		Send {U+1246A}
	if winkel = 4
		Send {U+12469}
	if winkel = 3
		Send {U+1230D}
	if winkel = 2
		Send {U+12399}
	if winkel = 1
		Send {U+1230B}
	unit := remainder-(winkel*10)
	if winkel = 0
		if unit = 0
		{
			Send {U+1244A}
			Return
		}
	if unit = 9
	{
		Send {U+12446}
		Return
	}
	if unit = 8
	{
		Send {U+12444}
		Return
	}
	if unit = 7
	{
		Send {U+12442}
		Return
	}
	if unit = 6
	{
		Send {U+1240B}
		Return
	}
	if unit = 5
	{
		Send {U+1240A}
		Return
	}
	if unit = 4
	{
		Send {U+1243C}
		Return
	}
	if unit = 3
	{
		Send {U+12408}
		Return
	}
	if unit = 2
	{
		Send {U+1222B}
		Return
	}
	if unit = 1
	{
		Send {U+12079}
		Return
	}
}

/*convert_to_arabic(conv){
	parsed := RegExReplace(conv, {U+3000}, Replacement = .)

}*/