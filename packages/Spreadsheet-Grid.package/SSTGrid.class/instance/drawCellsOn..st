drawing
drawCellsOn: aCanvas

	self data rows do: [ :row |
		row cells do: [ :cell |
			 self drawMorph: cell on: aCanvas.
			" Draw Borders"
			aCanvas fillRectangle: (Rectangle origin: cell bottomLeft - (0@1) corner: cell bottomRight) color: cell borderColor.
			aCanvas fillRectangle: (Rectangle origin: cell topRight - (1@0) corner: cell bottomRight) color: cell borderColor.]]