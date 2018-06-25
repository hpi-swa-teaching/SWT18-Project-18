as yet unclassified
initialize 

	bounds := self defaultBounds.
	text := ''.
	color := self defaultColor.
	backgroundColor := self defaultBackgroundColor.
	layout := (PHTextLayout concreteTextLayoutClass new
			font: PHStyleContext defaultFont;
			lineSpacing: 4;
			yourself)