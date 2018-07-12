initialize
update

	"| x y |
	
	x := self grid position x.
	y := self grid position y + self grid defaultSize y.
	self rows do: [:row |
		row updatePosition: x@y.
		row edgeGrip position: row position x  @ (row bottom  - (row edgeGrip height)).
		y := row bottom].
	x := self grid position x + self grid defaultSize x.
	y := self grid position y.
	self columns do: [:column |
		column updatePosition: x@y.
		column edgeGrip position: (column right - (column edgeGrip width)) @ column position y.
		x := column right].
	self columns do: [ :column |
		self rows do: [ :row |
			self updateCellAtRow: row column: column]]."
	self grid changed.
	self grid layoutChanged.