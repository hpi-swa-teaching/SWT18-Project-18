as yet unclassified
createMonthDayYear
	^ self  self monthRegexSubstring, self spacingRegexSubstring , self dayRegexSubstring, self spacingRegexSubstring , self yearRegexSubstring