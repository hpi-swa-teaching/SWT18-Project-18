drawing
drawLabelsOn: aCanvas
	
	self rows do: [ :row |
		row drawOn: aCanvas.
		" Border "
		aCanvas fillRectangle: (Rectangle origin: row position corner: row topRight + 1) color: Color black.].
	
	self columns do: [ :column |
		column drawOn: aCanvas.
		" Borders "
		aCanvas fillRectangle: (Rectangle origin: column position corner: column bottomLeft + 1 ) color: Color black]