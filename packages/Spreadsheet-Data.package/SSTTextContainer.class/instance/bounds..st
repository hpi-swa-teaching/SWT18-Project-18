bounds
bounds: newBounds
	| newExtent |
	newExtent := newBounds extent.
	(self extend dotProduct: self extend) <= (newExtent dotProduct: newExtent)
	ifTrue:[self position: newBounds topLeft; extent: newExtent.] "We're growing. First move then resize."
	ifFalse:[self extent: newExtent; position: newBounds topLeft.]. "We're shrinking. First resize then move."