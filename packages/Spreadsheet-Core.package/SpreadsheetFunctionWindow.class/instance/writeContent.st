as yet unclassified
writeContent

	Transcript show: self calcRepresentation.
	self grid editor text: self text.
	self grid editor calcRepresentation: self calcRepresentation.
	self grid editor writeContent.