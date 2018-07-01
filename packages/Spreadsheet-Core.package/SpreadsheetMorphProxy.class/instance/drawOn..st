as yet unclassified
drawOn: aCanvas

	| transform |
	
	aCanvas fillRectangle: (Rectangle origin: self position corner: self bottomRight) color: self backgroundColor.
	
	"PHRenderer
		drawBorderOn: aCanvas
		bounds: self bounds
		color: self borderColor
		radius: (Rectangle left: 0 right: 0 top: 0 bottom: 0)
		width: (Rectangle left: 1 right: 1 top: 1 bottom: 1)
		shape: (PHRenderer
			roundRectShapeBounds: self bounds
			radius: (Rectangle left: 0 right: 0 top: 0 bottom: 0)
			borderWidth: (Rectangle left: 1 right: 1 top: 1 bottom: 1))."
	
	transform := MatrixTransform2x3 withOffset: self layoutBounds origin + aCanvas origin.
	
	self layout
		fullDrawOn: aCanvas
		transform: transform
		color: self color
		selectionColor: nil
		selectionFillColor: nil
		clip: (aCanvas clipRect translateBy: aCanvas origin)
		drawCursor: false
		finalPosition: self layoutBounds topLeft.
		
	