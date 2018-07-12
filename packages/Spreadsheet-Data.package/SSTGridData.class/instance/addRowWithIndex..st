accessing rows
addRowWithIndex: anInteger

	| newRow |
	
	newRow := SSTRowLabel newWithIndex: anInteger on: self.
	self rows add: newRow beforeIndex: anInteger.
	self rows do: [:aRow | aRow updateIndex].
	self columns do: [:aColumn |  SSTCell newInRow: newRow column: aColumn on: self with: (self grid flyweightFactory getFlyweightFor: #nat)].
	self update.