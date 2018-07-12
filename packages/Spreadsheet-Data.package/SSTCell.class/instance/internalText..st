initialization
internalText: aString

	| styled |
	styled := aString isText
		ifTrue: [Text string: aString string runs: aString runs copy]
		ifFalse: [aString asText].
	
	"self fontSize ~= self baseFontSize ifTrue: [
		styled addAttribute: (TextFontReference toFont: self styleContext font)].
	
	self fontWeight ~= 'normal' ifTrue: [styled addAttribute: TextEmphasis bold].
	self fontStyle  ~= 'normal' ifTrue: [styled addAttribute: TextEmphasis italic]."
	self layout text: styled ifChanged: [self textChanged]