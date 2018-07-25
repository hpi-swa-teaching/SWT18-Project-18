updating
updateFor: aSelection

	fontSizeLabel text: self fontSizeBaseString, aSelection selectedCell fontSize.
	fontColorLabel color: aSelection selectedCell color.
	backgroundColorLabel color: aSelection selectedCell backgroundColor.