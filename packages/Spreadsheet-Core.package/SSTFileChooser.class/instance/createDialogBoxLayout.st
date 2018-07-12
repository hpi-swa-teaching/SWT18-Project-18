ui creation
createDialogBoxLayout
	"Create a layout suitable for a MorphicModel file chooser."

	| inset insetNeg captionTop captionBottom buttonsBottom buttonsTop 
	contentTop contentBottom textEntryTop textEntryBottom |

	inset := 6.
	insetNeg := inset negated.
	captionTop := 0.
	captionBottom := 33.
	contentTop := captionBottom + inset.
	contentBottom := -50 - (inset*4).
	textEntryTop := contentBottom + inset.
	textEntryBottom := -30 - inset - inset.
	buttonsTop := textEntryBottom + inset.
	buttonsBottom := insetNeg.

	self addFullPanesTo: self morphicView
		from: {
				{
					(self captionPane).
					(0 @ 0 corner: 1 @ 0).
					(0 @ captionTop corner: 0 @ captionBottom)
				}.
				{
					(self textEntryPane).
					(0 @ 1 corner: 1 @ 1).
					(inset @ textEntryTop corner: insetNeg @ textEntryBottom)
				}.
				{
					(self buttonPane).
					(0 @ 1 corner: 1 @ 1).
					(inset @ buttonsTop corner: insetNeg @ buttonsBottom)
				}.
				{
					(self directoryPane).
					(0 @ 0 corner: 0.5 @ 1).
					(inset @ contentTop corner: insetNeg @ contentBottom)
				}.
				{
					(self filePane).
					(0.5 @ 0 corner: 1 @ 1).
					(inset @ contentTop corner: insetNeg @ contentBottom)
				}
			}