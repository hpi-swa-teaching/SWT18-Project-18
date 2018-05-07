as yet unclassified
changeWidth: aWidth at: aCol
	| cells |

	cells := (columns at: aCol) cells.
	cells do: [ :aCell | aCell width: aWidth].
	
	self removeColumnHoles.