as yet unclassified
writeContent

	self grid editor text self text.
	self grid editor calcRepresentation: self calcRepresentation.
	self grid editor writeContent.
	self contents: self calcRepresentation.