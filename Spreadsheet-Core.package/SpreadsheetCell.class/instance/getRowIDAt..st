initialization
getRowIDAt: aRow
	| index |

	index := 1.
	
	self grid rows do: [:d |
		d == aRow ifTrue: [^index].
		index := index + 1.
		].