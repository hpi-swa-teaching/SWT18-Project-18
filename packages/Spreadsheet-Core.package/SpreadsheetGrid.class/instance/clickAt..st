event handling
clickAt: evt
	| point cell |
	point := evt position.
	((point x < self columns first left) and: [point y > self rows first top]) ifTrue: [
		self startDragAt: (self rowLabelAt: point).
		^ self].
	((point x > self columns first left) and: [point y < self rows first top]) ifTrue: [
		self startDragAt: (self columnLabelAt: point).
		^ self].
	((point x < self columns first left) and: [point y < self rows first top]) ifTrue: [
		self selectAll.
		^ self].
	cell := self cellAt: point.
	((self clickTime to: Time now) asDuration asMilliSeconds < self doubleClickTime and: [ self selection startCell = cell ])
		ifTrue: [self selection editText: evt]
		ifFalse: [self clickTime: Time now. self startDragAt: (self cellAt: point)]. 