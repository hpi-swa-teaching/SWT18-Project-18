initialization
addMoveMorphs 

	{(SSTDragMorph for: self from: self topLeft to: self topRight).
	(SSTDragMorph for: self from: self bottomLeft to: self bottomRight).
	(SSTDragMorph for: self from: self topLeft to: self bottomLeft).
	(SSTDragMorph for: self from: self topRight to: self bottomRight)} do: [ :morph |
		self moveMorphs add: morph. self addMorph: morph]