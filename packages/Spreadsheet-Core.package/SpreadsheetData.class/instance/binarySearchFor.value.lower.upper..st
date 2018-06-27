grid access
binarySearchFor: aCollection value: aNumber lower: lowerBoundMethod upper: upperBoundMethod

	| element index range|
	range := (1@ aCollection size).
	index := (aCollection size + 1) // 2.
	element := aCollection at: index.
	[aNumber between: (element perform: lowerBoundMethod) and: (element perform: upperBoundMethod)] whileFalse: [
		(aNumber > (element perform: lowerBoundMethod)) ifTrue: [
			range := (index + 1) @ (range y).
			(range y = range x)
				ifTrue: [
					index := index + 1]
				ifFalse: [
					index := index + (((range y - range x)+ 2) // 2)].
			element := aCollection at: index.].
		(aNumber < (element perform: lowerBoundMethod)) ifTrue: [
			range := (range x) @ (index - 1).
			(range y = range x)
				ifTrue: [
					index := index - 1]
				ifFalse: [
					index := range x - 1 +  (((range y - range x) + 2) // 2)].
			element := aCollection at: index]].
	^ index