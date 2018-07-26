accessing
position: aPoint 
	"Change the position of this morph and and all of its
	submorphs. "
	| delta |
	delta := (aPoint - bounds topLeft) rounded.
	(delta x = 0 and: [delta y = 0]) ifTrue: [^ self]. "Null change"
	bounds := (self bounds translateBy: delta).
	self changed.