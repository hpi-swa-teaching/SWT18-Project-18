as yet unclassified
createDayMonthYear
	^ self dayRegexSubstring, self spacingRegexSubstring , self monthRegexSubstring, self spacingRegexSubstring , self yearRegexSubstring