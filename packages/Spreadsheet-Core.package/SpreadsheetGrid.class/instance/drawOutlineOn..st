drawing
drawOutlineOn: aCanvas

	aCanvas fillRectangle: (Rectangle origin: self position corner: self position + self defaultSize)  color: Color gray.
	"Borders"
	aCanvas fillRectangle: (Rectangle origin: self position corner: self topRight + 1) color: Color black .
	aCanvas fillRectangle: (Rectangle origin: self position corner: self bottomLeft + 1) color: Color black.
	aCanvas fillRectangle: (Rectangle origin: self topRight corner: self bottomRight + 1) color: Color black.
	aCanvas fillRectangle: (Rectangle origin: self bottomLeft corner: self bottomRight + 1) color: Color black.
	aCanvas fillRectangle: (Rectangle origin: self position + self defaultSize corner: (self right - 20 @ self position y + self defaultSize y) + 1) color: Color black. "No idea where - 20 is coming from"
	aCanvas fillRectangle: (Rectangle origin: self position + self defaultSize corner: (self position x + self defaultSize x @ self bottom) +1 ) color: Color black.