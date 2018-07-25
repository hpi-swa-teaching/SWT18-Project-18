as yet unclassified
correspondingRegex
	"should be able to accept the following regex:  
		<day> <month> <year>		(15 April 1982; 15-APR-82; 15.4.82; 15APR82)  
		<month> <day> <year>		(April 15, 1982; 4/15/82)
		<year>-<month>-<day>			(1982-04-15) (ISO8601)"
	| completeRegex |
	completeRegex := '(', self createDayMonthYear , ')|(', self createMonthDayYear , ')|(', self createYearMonthDay , ')'.
	^completeRegex asRegexIgnoringCase 