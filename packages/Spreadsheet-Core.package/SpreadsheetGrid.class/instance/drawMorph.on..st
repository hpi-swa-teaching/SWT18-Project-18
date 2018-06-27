drawing
drawMorph: aMorph on: aCanvas

	| transform |
	
	aCanvas fillRectangle: (Rectangle origin: aMorph position corner: aMorph bottomRight) color: aMorph backgroundColor.
	
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
	
	transform := MatrixTransform2x3 withOffset: aMorph layoutBounds origin + aCanvas origin.
	
	aMorph layout
		fullDrawOn: aCanvas
		transform: transform
		color: aMorph color
		fillColor: aMorph backgroundColor
		selectionColor: nil
		selectionFillColor: nil
		clip: (aCanvas clipRect translateBy: aCanvas origin)
		drawCursor: false
		finalPosition: aMorph layoutBounds topLeft.