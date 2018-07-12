open
open
	| model |
	self postOpen.
	self morphicView openInWorld.
	UserInterfaceTheme current applyTo: self morphicView allMorphs.
	model := self morphicView model.
	FileChooser modalLoopOn: self morphicView.
	^ self getFileFromTextEntry
