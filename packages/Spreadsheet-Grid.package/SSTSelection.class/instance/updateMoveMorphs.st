handle submorphs
updateMoveMorphs 

	(self moveMorphs first) adjustTo: self topLeft and: self topRight.
	(self moveMorphs at: 2) adjustTo: self bottomLeft and: self bottomRight.
	(self moveMorphs at: 3) adjustTo: self topLeft and: self bottomLeft.
	(self moveMorphs at: 4) adjustTo: self topRight and: self bottomRight.