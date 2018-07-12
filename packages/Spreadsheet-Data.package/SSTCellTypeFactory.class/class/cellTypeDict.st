as yet unclassified
cellTypeDict
	"dict containing the possible types using flyweights"

	^ Dictionary newFrom: {
		#number -> SSTCellTypeNumber new.
		#text -> ''.
		#date ->  ''.
		#time -> ''.
		#currency -> ''.
		#percentage -> ''.
		#nat ->''
	}