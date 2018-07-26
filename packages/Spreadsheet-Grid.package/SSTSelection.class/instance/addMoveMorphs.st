handle submorphs
addMoveMorphs 

	{(SSTMoveMorph for: self from: self topLeft to: self topRight).
	(SSTMoveMorph for: self from: self bottomLeft to: self bottomRight).
	(SSTMoveMorph for: self from: self topLeft to: self bottomLeft).
	(SSTMoveMorph for: self from: self topRight to: self bottomRight)} do: [ :morph |
		self moveMorphs add: morph. self addMorph: morph]