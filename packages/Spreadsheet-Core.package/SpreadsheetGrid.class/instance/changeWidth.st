layout
changeWidth
	| cells aWidth aCol|
	
	aWidth := 10.
	aCol := 2.
	
	cells := (columns at: aCol) cells.
	cells do: [ :aCell | aCell width: aWidth].
	
	self removeColumnHoles.