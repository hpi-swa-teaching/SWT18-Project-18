event handling
findColumnAndRowIndex: position
	" Uses Binary search "
	| row rowIndex col range colIndex|
	range := (1@ self columns size).
	colIndex := (self columns size + 1) // 2.
	col := self columns at: colIndex.
	[position x between: col left and: col right] whileFalse: [
		(position x > col left) ifTrue: [
			range := (colIndex + 1) @ (range y).
			(range y = range x)
				ifTrue: [
					colIndex := colIndex + 1]
				ifFalse: [
					colIndex := colIndex + (((range y - range x)+ 2) // 2)].
			col := self columns at: colIndex.].
		(position x < col left) ifTrue: [
			range := (range x) @ (colIndex - 1).
			(range y = range x)
				ifTrue: [
					colIndex := colIndex - 1]
				ifFalse: [
					colIndex := range x - 1 +  (((range y - range x) + 2) // 2)].
			col := self rows at: colIndex]].
	
	range := (1@ self rows size).
	rowIndex := (self rows size + 1) // 2.
	row := self rows at: rowIndex.
	[position y between: row top and: row bottom] whileFalse: [
		(position y > row top) ifTrue: [
			range := (rowIndex + 1) @ (range y).
			(range y = range x)
				ifTrue: [
					rowIndex := rowIndex + 1]
				ifFalse: [
					rowIndex := rowIndex + (((range y - range x)+ 2) // 2)].
			row := self rows at: rowIndex.].
		(position y < row top) ifTrue: [
			range := (range x) @ (rowIndex - 1).
			(range y = range x)
				ifTrue: [
					rowIndex := rowIndex - 1]
				ifFalse: [
					rowIndex := range x - 1 +  (((range y - range x) + 2) // 2)].
			row := self rows at: rowIndex]].
	
	^ (colIndex @ rowIndex).