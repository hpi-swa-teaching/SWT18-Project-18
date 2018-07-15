initialization
addColorsTo: aDropdown target: aSymbol

	| page1 page2 page3 |
	
	page1 := PHButtonGroup new.
	{ Color black. Color brown. Color red. Color orange. Color yellow. Color green. Color cyan. Color blue. Color magenta} do: [ :color |
		page1 add: ((SSTColorButton new)
				color: color;
				when: #clicked send: aSymbol to: self with: color )].
	page2 := PHButtonGroup new.
	{ Color gray. Color lightBrown. Color lightRed. Color lightOrange. Color lightYellow. Color lightGreen. Color lightCyan. Color lightBlue. Color lightMagenta} do: [ :color |
		page2 add: ((SSTColorButton new)
				color: color;
				when: #clicked send: aSymbol to: self with: color )].
	page3 := PHButtonGroup new.
	{ Color white. Color paleTan. Color paleRed. Color paleOrange. Color paleYellow. Color paleGreen. Color ice. Color paleBlue. Color paleMagenta} do: [ :color |
		page3 add: ((SSTColorButton new)
				color: color;
				when: #clicked send: aSymbol to: self with: color )].
	aDropdown add: page1; add: page2; add: page3; yourself.