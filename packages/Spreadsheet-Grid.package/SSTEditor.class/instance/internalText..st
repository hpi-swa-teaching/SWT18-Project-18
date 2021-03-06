override
internalText: aString

	| styled |
	styled := aString isText
		ifTrue: [Text string: aString string runs: aString runs copy]
		ifFalse: [aString asText].
	
	self styleContext fontSize ~= PHStyleContext baseFontSize ifTrue: [
		styled addAttribute: (TextFontReference toFont: self styleContext font)].
	
	self styleContext fontWeight ~= 'normal' ifTrue: [styled addAttribute: TextEmphasis bold].
	self styleContext fontStyle  ~= 'normal' ifTrue: [styled addAttribute: TextEmphasis italic].
	self struckOut ifTrue: [styled addAttribute: TextEmphasis struckOut].
	self underlined ifTrue: [styled addAttribute: TextEmphasis underlined].
	
	self layout text: styled ifChanged: [self layoutChanged; changed]