as yet unclassified
observeCell: aCell

	aCell addDependent: self.
	self cells add: aCell.