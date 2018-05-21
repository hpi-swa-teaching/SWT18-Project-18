initialization
sizeCells
	| x y row col newWidth newHeight |

	x := self position x.
	y := self position y.
	
	row := self row index.
	col := self column index.
		
	self wasInitialized == true ifTrue: [
		((self topSide ~= x) or: (self bottomSide ~= (x + self height))) ifTrue: [
			newHeight := self height.
			self row cells do: [:d | d height: newHeight].
			self grid removeRowHoles.
			].
		((self leftSide ~= y) or: (self rightSide ~= (y + self width))) ifTrue: [			
			newWidth := self width.
			self column cells do: [:d | d width: newWidth].			
			self grid removeColumnHoles.
			].
	].