drawing
drawOutlineOn: aCanvas

	"Mark all Label"
	aCanvas fillRectangle: (Rectangle origin: self position corner: self position + self defaultSize)  color: Color gray.

	aCanvas fillRectangle: (Rectangle origin: self position corner: self topRight + (0@1)) color: Color black.
	aCanvas fillRectangle: (Rectangle origin: self position corner: self bottomLeft  + (1@0)) color: Color black.
	aCanvas fillRectangle: (Rectangle origin: self topRight - (1@0) corner: self bottomRight) color: Color black.
	aCanvas fillRectangle: (Rectangle origin: self bottomLeft - (0@1) corner: self bottomRight) color: Color black.
	aCanvas fillRectangle: (Rectangle origin: self position + (0@self defaultSize y) corner: (self right - 20 @ self position y + self defaultSize y) + (0@1)) color: Color black. "No idea where - 20 is coming from"
	aCanvas fillRectangle: (Rectangle origin: self position + (self defaultSize x@0) corner: (self position x + self defaultSize x @ self bottom) +(1@0)) color: Color black.