initialization
updateWidth: width
	| deltaWidth |
	self width: width.
	self contentMorph fitContents.
	deltaWidth := self bounds right - self contentMorph bounds right.
	self contentMorph position: self position + (deltaWidth/2 @ 4)