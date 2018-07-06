event handling
acceptDroppingMorph: dropee event: evt
	"Return the dropee to its old position, and add a reference to it at the
	cursor point."
	dropee position: 50@50.
	self addMorphFront: dropee.