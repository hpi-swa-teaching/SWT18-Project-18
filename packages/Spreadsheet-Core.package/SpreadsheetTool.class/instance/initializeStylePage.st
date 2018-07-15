initialization
initializeStylePage

	| page bgColorDropdown colorDropdown |
	
	page := PHPage row.
	
	bgColorLabel := (PHButton new
		color: Color black;
		disabled: true;
		width: 10).
	
	bgColorDropdown := PHDropdown new.
	self addColorsTo: bgColorDropdown target: #selectionBackgroundColor:.
	
	colorLabel := (PHButton new
		color: Color black;
		disabled: true;
		width: 10).
	
	colorDropdown := PHDropdown new.
	self addColorsTo: colorDropdown target: #selectionColor:.
	
	fontSizeLabel := (PHButton label: 'Font size: 12').
	
	page
		add: (PHButtonGroup new
			add: ((PHButton icon: #iconPaint_brush)
				attach: bgColorDropdown);
			add: bgColorLabel);
		add: (PHButtonGroup new				
			add: ((PHButton icon: #iconFont)
				attach: colorDropdown);
			add: colorLabel);
		add: (PHButtonGroup new 
			add: ((PHButton icon: #iconBold) when: #clicked evaluate: [self grid toggleBold]);
			add: ((PHButton icon: #iconItalic) when: #clicked evaluate: [self grid toggleItalic]);
			add: ((PHButton icon: #iconUnderline) when: #clicked evaluate: [self grid toggleUnderlined]);
			add: ((PHButton icon: #iconStrikethrough) when: #clicked evaluate: [self grid toggleStruckOut]));
		add: fontSizeLabel.
	self add: page.