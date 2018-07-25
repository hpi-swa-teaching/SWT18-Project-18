as yet unclassified
createYearMonthDay
	^ self yearRegexSubstring , self spacingRegexSubstring , self monthRegexSubstring , self spacingRegexSubstring , self dayRegexSubstring 