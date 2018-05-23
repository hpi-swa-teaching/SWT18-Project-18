as yet unclassified
writeContent

	self grid editor contents: self contents.
	self grid editor calcRepresentation: self calcRepresentation.
	self grid editor writeContent.
	self contents: self calcRepresentation.