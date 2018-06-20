drawing
drawCellsOn: aCanvas

	self rows do: [ :row |
		row cells do: [ :cell |
			cell drawOn: aCanvas.
			" Draw Borders"
			aCanvas fillRectangle: (Rectangle origin: cell position corner: cell topRight + 1) color: Color gray.
			aCanvas fillRectangle: (Rectangle origin: cell position corner: cell bottomLeft + 1) color: Color gray.
			aCanvas fillRectangle: (Rectangle origin: cell topRight corner: cell bottomRight + 1) color: Color gray.
			aCanvas fillRectangle: (Rectangle origin: cell bottomLeft  corner: cell bottomRight  + 1) color: Color gray.]]