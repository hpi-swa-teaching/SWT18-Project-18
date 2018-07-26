bounds
layoutBounds
	"Copied from Morph"
	| inset box |
	
	inset := self padding.
	box := self bounds.
	inset isZero ifTrue:[^box].
	^box insetBy: inset