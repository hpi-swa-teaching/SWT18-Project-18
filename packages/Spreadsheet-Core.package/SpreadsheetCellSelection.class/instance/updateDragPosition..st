cell
updateDragPosition: aPoint
  
  self findNewPositionX: aPoint.
  self findNewPositionY: aPoint.
  self fromCollection: (self grid getCellsFrom: self startCell to: self currentCell).