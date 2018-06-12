managing columns
removeColumn 
	
	| aColumnIndex |
	
	(self columns size <= 1) ifTrue: [^ self].
	self selection singleColumnSelected 
		ifTrue: [aColumnIndex := self selection startCell index]
		ifFalse: [aColumnIndex := self columns last index].
	self removeColumnWithIndex: aColumnIndex.