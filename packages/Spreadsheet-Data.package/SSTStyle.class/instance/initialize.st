as yet unclassified
initialize 

	super initialize.
	
	defaultValues := (Dictionary new
		at: #fontSize put: 16;
		at: #fontStyle put: 'normal';
		at: #fontWeight put: 'normal';
		at: #color put: Color black;
		at: #backgroundColor put: Color white;
		yourself)