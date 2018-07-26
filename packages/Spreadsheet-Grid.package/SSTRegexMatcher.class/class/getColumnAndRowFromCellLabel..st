as yet unclassified
getColumnAndRowFromCellLabel: aLabel
	"split a cell label into a char and a digit and convert the char to a digit >> return column and row as vector"

	| char charAsDigit digit |
	char := aLabel first.
	charAsDigit := self getNumberFromChar: char.
	digit := aLabel allButFirst asNumber.
	^charAsDigit@digit