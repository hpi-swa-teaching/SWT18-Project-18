as yet unclassified
drawBackup: aCanvas
	
	"aCanvas fillRectangle: self bounds  color: Color white. 
	aCanvas drawString:  self content in: self bounds font: nil color: Color black.
	aCanvas fillRectangle: (self topLeft extent: self width @ 1) color: Color gray. 
	aCanvas fillRectangle: (self topLeft extent: 1 @ self height) color: Color gray. 
	aCanvas fillRectangle: (self topRight extent: 1 @ self height) color: Color gray. 
	aCanvas fillRectangle: (self bottomLeft extent: self width @ 1) color: Color gray. "