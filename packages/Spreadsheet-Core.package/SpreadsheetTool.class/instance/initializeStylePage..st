initialization
initializeStylePage: page

	| bgColorDropdown colorDropdown |
	
	bgColorLabel := (PHButton new
		color: (SSTStyle defaultFor: #backgroundColor);
		disabled: true;
		width: 10).
	
	bgColorDropdown := PHDropdown new.
	self addColorsTo: bgColorDropdown target: #changeBackgroundColor:.
	
	colorLabel := (PHButton new
		color: (SSTStyle defaultFor: #color);
		disabled: true;
		width: 10).
	
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
				attach: bgColorDropdown);
			add: bgColorLabel;			
			add: ((PHButton icon: #iconFont)
				attach: colorDropdown);
			add: colorLabel;
			add: fontSizeLabel).
	self add: page.