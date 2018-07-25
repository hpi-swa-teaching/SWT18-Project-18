public
connect: aMorph to: aCell content: aFunction

	aMorph position: 0@0; openInWorld.
	aCell 
		droppedMorph: aMorph;
		calculateFunction: aFunction