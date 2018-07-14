as yet unclassified
correspondingRegex
	"Matches common time formats:
	12:00 | 12:30:30 | 12:00:00 am | 12am | 12 AM | 24:00 | 24"

	^ '[0-2][0-9](\:[0-6][0-9])?(\:[0-6][0-9])?\s?(am|pm)?' asRegexIgnoringCase