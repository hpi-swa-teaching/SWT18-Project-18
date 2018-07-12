drawing
drawLabelsOn: aCanvas
	
	self data rows do: [ :row |
		self drawMorph: row on: aCanvas.
		" Border "
		aCanvas fillRectangle: (Rectangle origin: row position - (0@1)corner: row topRight) color: Color black.].
	
	self data columns do: [ :column |
		self drawMorph: column on: aCanvas.
		" Borders "
		aCanvas fillRectangle: (Rectangle origin: column position - (1@0) corner: column bottomLeft ) color: Color black].