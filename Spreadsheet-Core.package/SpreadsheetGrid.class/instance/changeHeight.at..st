as yet unclassified
changeHeight: aHeight at: aRow
	| cells |

	cells := (rows at: aRow) cells.	
	cells do: [ :aCell | aCell height: aHeight.].
	
	self removeRowHoles.
	
