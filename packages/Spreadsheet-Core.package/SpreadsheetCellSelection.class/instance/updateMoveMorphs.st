updating
updateMoveMorphs 

	(self moveMorphs at: 1) adjustTo: self topLeft and: self topRight.
	(self moveMorphs at: 2) adjustTo: self bottomLeft and: self bottomRight.
	(self moveMorphs at: 3) adjustTo: self topLeft and: self bottomLeft.
	(self moveMorphs at: 4) adjustTo: self topRight and: self bottomRight.