event handling
clickAt: evt

	| point cell |
	
	point := evt position.
	"Clicked on row label"
	((point x < self data columns first left) and: [point y > self data rows first top]) ifTrue: [
		self startDragAt: (self data rowLabelAt: point).
		^ self].
	"Clicked on column label"
	((point x > self data columns first left) and: [point y < self data rows first top]) ifTrue: [
		self startDragAt: (self data columnLabelAt: point).
		^ self].
	"Clicked on select all label (upper left corner)"
	((point x < self data columns first left) and: [point y < self data rows first top]) ifTrue: [
		self selectAll.
		^ self].
	"Clicked on a cell"
	cell := self cellAt: point.
	((self clickTime to: Time now) asDuration asMilliSeconds < self doubleClickTime and: [ self selection startCell = cell ])
		ifTrue: [self selection editText: evt]
		ifFalse: [self clickTime: Time now. self startDragAt: (self cellAt: point)]. 