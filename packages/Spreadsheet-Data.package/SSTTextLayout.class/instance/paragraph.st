as yet unclassified
paragraph

	| paragraph | 
	
	paragraph := NewParagraph new
		compose: self text asText
		style: PHStyleContext defaultTextStyle
		from: 1
		in: (origin extent: (self width < 0
			ifTrue: [self maximumContainerExtent x]
			ifFalse: [self width]) @ self maximumContainerExtent y).
	
	(self width < 0 or: [self alignmentCanShrink]) ifTrue: [paragraph adjustRightX].
	
	^ paragraph