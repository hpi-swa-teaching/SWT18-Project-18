initialization
centerText
	| deltaWidth |
	
	self contentMorph position: self position + (0@4).
	self contentMorph fitContents.
	deltaWidth := self bounds right - self contentMorph bounds right.
	self contentMorph position: self position + (deltaWidth/2 @ 4).
	self contentMorph changed.