drawing
drawCellsOn: aCanvas

	self rows do: [ :row |
		row cells do: [ :cell |
			cell drawOn: aCanvas.]]