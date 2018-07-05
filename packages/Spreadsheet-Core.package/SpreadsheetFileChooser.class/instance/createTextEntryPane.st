ui creation
createTextEntryPane

	self textEntryPane: AlignmentMorph new.
	self textEntryPane
		color: Color transparent;
		layoutPolicy: ProportionalLayout new;
		borderWidth: 0.
	self createTextEntry.
	self textEntryPane
		addMorph: (PHLabel text: 'Create new file (only if no file selected):')
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 0.5 @ 1.0)
			offsets:(0 @ 0 corner: 0 @ 0)).
	self textEntryPane
		addMorph: self textEntry
		fullFrame: (LayoutFrame fractions: (0.51 @ 0 corner: 1.0 @ 1.0)
			offsets:(0 @ 0 corner: 0 @ 0)).