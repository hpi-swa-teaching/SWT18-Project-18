as yet unclassified
fullDrawOn: aCanvas
transform: aTransform
color: aColor
selectionColor: aSelectionColor
selectionFillColor: aSelectionFillColor
clip: aRectangle
drawCursor: aBoolean
finalPosition: aPoint
	
	| p area |
	origin ~= aPoint ifTrue: [
		origin := aPoint.].
	
	p := self paragraph
		caretColor: aColor;
		selectionColor: aSelectionFillColor;
		unfocusedSelectionColor: aSelectionFillColor;
		showCaret: aBoolean;
		focused: true;
		positionWhenComposed: aPoint;
		yourself.
	
	area := aTransform offset extent: self extent.
	
	aCanvas paragraph: p bounds: (aPoint extent: area extent) color: aColor