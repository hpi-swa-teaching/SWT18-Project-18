as yet unclassified
createMonthDayYear
	^ self monthRegexSubstring, self spacingRegexSubstring , self dayRegexSubstring, self spacingRegexSubstring , self yearRegexSubstring