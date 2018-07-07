as yet unclassified
afterInitialize

	"Connects Morph with fixed cells and calls fixed Function, should be replaced by UI"
	self morph position: 50@50.
	self function: #position:.
	self observeCell: ( data cellAtIndex: 1@1).
	self observeCell: ( data cellAtIndex: 1@2).