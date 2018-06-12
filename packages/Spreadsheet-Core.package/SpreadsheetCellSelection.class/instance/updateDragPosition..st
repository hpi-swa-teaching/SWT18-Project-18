cell
updateDragPosition: aPoint
  
  self findNewPositionX: aPoint.
  self findNewPositionY: aPoint.
  self replaceCellsFrom: self startCell to: self currentCell.