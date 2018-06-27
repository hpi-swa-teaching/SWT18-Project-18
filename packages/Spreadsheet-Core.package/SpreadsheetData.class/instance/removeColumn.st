manage columns
removeColumn 
	
	| aColumnIndex |
	
	(self columns size <= 1) ifTrue: [^ self].
	self grid selection singleColumnSelected 
		ifTrue: [aColumnIndex := self grid selection startCell column index]
		ifFalse: [aColumnIndex := self columns last index].
	self removeColumnWithIndex: aColumnIndex.