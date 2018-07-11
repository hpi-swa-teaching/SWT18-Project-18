ui creation
createTextEntryPane

	self textEntryPane: AlignmentMorph new.
	self textEntryPane
		color: Color transparent;
		layoutPolicy: ProportionalLayout new;
		borderWidth: 0.
	self createTextEntry.
	self textEntryPane
		addMorph: (PHLabel text: 'Selected file:')
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.14 @ 1.0)
			offsets:(0 @ 0 corner: 0 @ 0)).
	self textEntryPane
		addMorph: self textEntry
		fullFrame: (LayoutFrame fractions: (0.15 @ 0 corner: 1.0 @ 1.0)
			offsets:(0 @ 0 corner: 0 @ 0)).