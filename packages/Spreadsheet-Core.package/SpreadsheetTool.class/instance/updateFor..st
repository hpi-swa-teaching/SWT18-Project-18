updating
updateFor: aSelection

	fontSizeLabel text: self fontSizeBaseString, aSelection selectedCell fontSize.
	colorLabel color: aSelection selectedCell color.
	bgColorLabel color: aSelection selectedCell backgroundColor.