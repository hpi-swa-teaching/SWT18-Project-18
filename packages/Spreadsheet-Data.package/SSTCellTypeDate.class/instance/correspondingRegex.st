as yet unclassified
correspondingRegex
	"accepts the following regex:  
		<day> <month> <year>		(15 April 1982; 15-APR-82; 15.4.82; 15APR82)  
		<month> <day> <year>		(April 15, 1982; 4/15/82)
		<year>-<month>-<day>			(1982-04-15) (ISO8601)"

	| completeRegex dayMonthYear monthDayYear yearMonthDay dayRx monthRx yearRx spRx |
	dayRx := self dayRegexSubstring.
	monthRx := self monthRegexSubstring.
	yearRx := self yearRegexSubstring.
	spRx := self spacingRegexSubstring.
	
	dayMonthYear := dayRx, spRx, monthRx, spRx, yearRx.
	monthDayYear := monthRx, spRx, dayRx, spRx, yearRx.
	yearMonthDay := yearRx, spRx, monthRx, spRx, dayRx.
	
	completeRegex := '(', dayMonthYear, ')|(', monthDayYear, ')|(', yearMonthDay, ')'.

	^completeRegex asRegexIgnoringCase 