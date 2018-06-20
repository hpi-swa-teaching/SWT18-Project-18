as yet unclassified
extent: aPoint

	(bounds extent closeTo: aPoint) ifTrue: [^ self].
	self changed.
	bounds := bounds topLeft extent: aPoint.
	layoutWidth := self layoutBounds width.
	self layout width: layoutWidth.
	self changed.