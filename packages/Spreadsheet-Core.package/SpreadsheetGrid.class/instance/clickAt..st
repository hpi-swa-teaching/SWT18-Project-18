event handling
clickAt: evt
	| point cell |
	point := evt position.
	((point x < self data columns first left) and: [point y > self data rows first top]) ifTrue: [
		self startDragAt: (self data rowLabelAt: point).
		^ self].
	((point x > self data columns first left) and: [point y < self data rows first top]) ifTrue: [
		self startDragAt: (self data columnLabelAt: point).
		^ self].
	((point x < self data columns first left) and: [point y < self data rows first top]) ifTrue: [
		self selectAll.
		^ self].
	cell := self cellAt: point.
	((self clickTime to: Time now) asDuration asMilliSeconds < self doubleClickTime and: [ self selection startCell = cell ])
		ifTrue: [self selection editText: evt]
		ifFalse: [self clickTime: Time now. self startDragAt: (self cellAt: point)]. 