as yet unclassified
cellTypeDict
	"dict containing the possible types using flyweights"

	^ Dictionary newFrom: {
		#number -> SpreadsheetCellTypeNumber new.
		#text -> ''.
		#date ->  ''.
		#time -> ''.
		#currency -> ''.
		#percentage -> ''.
		#nat ->''
	}