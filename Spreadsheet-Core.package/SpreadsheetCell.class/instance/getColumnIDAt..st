initialization
getColumnIDAt: aCol
	| index |

	index := 1.
	
	self grid columns do: [:d |
		d == aCol ifTrue: [^index].
		index := index + 1.
		].