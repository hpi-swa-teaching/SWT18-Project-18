as yet unclassified
createYearMonthDay
	^ self  self yearRegexSubstring , self spacingRegexSubstring , self monthRegexSubstring , self spacingRegexSubstring , self dayRegexSubstring 