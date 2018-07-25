initialization
initializeStylePage: page

	| backgroundColorDropdown colorDropdown |
	
	self backgroundColorLabel: (PHButton new
		color: (SSTStyle defaultFor: #backgroundColor);
		disabled: true;
		width: self buttonWidth).
	
	backgroundColorDropdown := PHDropdown new.
	self addColorsTo: backgroundColorDropdown target: #changeBackgroundColor:.
	
	self fontColorLabel: (PHButton new
		color: (SSTStyle defaultFor: #color);
		disabled: true;
		width: self buttonWidth).
	
	colorDropdown := PHDropdown new.
	self addColorsTo: colorDropdown target: #changeColor:.
	
	fontSizeLabel := ((PHButton label: self fontSizeBaseString, (SSTStyle defaultFor: #fontSize))
		attach: self fontSizeDropdown).
	page
		add: (PHButtonGroup new
			add: ((PHButton icon: #iconBold) when: #clicked evaluate: [self grid toggleBold]);
			add: ((PHButton icon: #iconItalic) when: #clicked evaluate: [self grid toggleItalic]);
			add: ((PHButton icon: #iconUnderline) when: #clicked evaluate: [self grid toggleUnderlined]);
			add: ((PHButton icon: #iconStrikethrough) when: #clicked evaluate: [self grid toggleStruckOut]));
		add: (PHButtonGroup new
			add: ((PHButton icon: #iconPaint_brush)
				attach: backgroundColorDropdown);
			add: self backgroundColorLabel;			
			add: ((PHButton icon: #iconFont)
				attach: colorDropdown);
			add: self fontColorLabel;
			add: fontSizeLabel).
	self add: page.