accessing
to: aCell

	| collection |
	collection := SSTCellCollection from: self to: aCell data: self data.
	self interpreterStack isEmpty ifFalse: [
		collection reject: [ :cell | cell == self or: [ cell == aCell] ] thenDo: [ :cell | cell interpreterStack push: self interpreterStack top. self interpreterStack top addAllocatedCell: cell ]].
	^ collection