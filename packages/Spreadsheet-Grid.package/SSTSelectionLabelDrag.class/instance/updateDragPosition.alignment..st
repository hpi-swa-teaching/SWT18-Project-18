as yet unclassified
updateDragPosition: aPoint alignment: alignment 
	| condition |
	(alignment = #x) 
		ifTrue: [
			((aPoint perform: alignment) between: self currentLabel left and: self currentLabel right) ifTrue: [ ^ self ].
			condition := (aPoint perform: alignment) > self currentLabel right]
		ifFalse: [
			((aPoint perform: alignment) between: self currentLabel top and: self currentLabel bottom) ifTrue: [ ^ self ].
			condition := (aPoint perform: alignment) > self currentLabel bottom].
	(condition)
		 ifTrue: [ 
			self updateCurrentLabel: #successor alignment: alignment.
		]
		ifFalse: [
			self updateCurrentLabel: #predecessor alignment: alignment].
	self updateDragPosition: aPoint alignment: alignment