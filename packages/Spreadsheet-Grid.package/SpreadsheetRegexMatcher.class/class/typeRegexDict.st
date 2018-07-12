as yet unclassified
typeRegexDict
	"dict mapping the type to a query regex"

	^ Dictionary newFrom: {
		#number -> '[0-9]+' asRegex.
		#text -> '.*' asRegex.
		#date ->  '[0-3][1-9].[0-1][0-9].[0-2][0-9][0-9][0-9]' asRegex.
		#time -> '[0-2][0-9]\:[0-6][0-9]' asRegex.
		#currency -> '[0-9]+' asRegex.
		#percentage -> '[0-9]+' asRegex.
		#nat -> '.*' asRegex
	}