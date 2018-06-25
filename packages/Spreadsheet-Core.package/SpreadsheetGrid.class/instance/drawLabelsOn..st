drawing
drawLabelsOn: aCanvas
	
	self rows do: [ :row |
		row drawOn: aCanvas.
		" Border "
		aCanvas fillRectangle: (Rectangle origin: row position - (0@1)corner: row topRight) color: Color black.].
	
	self columns do: [ :column |
		column drawOn: aCanvas.
		" Borders "
		aCanvas fillRectangle: (Rectangle origin: column position - (1@0) corner: column bottomLeft ) color: Color black]