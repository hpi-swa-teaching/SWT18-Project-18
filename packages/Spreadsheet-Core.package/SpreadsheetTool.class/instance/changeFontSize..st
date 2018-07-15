updating
changeFontSize: aNumber

	self fontSizeLabel text: self fontSizeBaseString, aNumber asString.
	self grid selectionFontSize: aNumber