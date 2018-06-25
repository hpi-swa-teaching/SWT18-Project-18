initialization
addMoveMorphs 

	{(SpreadsheetCellDragMorph for: self from: self topLeft to: self topRight).
	(SpreadsheetCellDragMorph for: self from: self bottomLeft to: self bottomRight).
	(SpreadsheetCellDragMorph for: self from: self topLeft to: self bottomLeft).
	(SpreadsheetCellDragMorph for: self from: self topRight to: self bottomRight)} do: [ :morph |
		self moveMorphs add: morph. self addMorph: morph]