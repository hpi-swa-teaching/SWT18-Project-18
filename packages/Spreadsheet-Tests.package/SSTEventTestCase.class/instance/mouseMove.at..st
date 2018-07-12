as yet unclassified
mouseMove: aMorph at: aPosition

	self simulateMouseEvent: #mouseMove at: aPosition buttons: #(left) start: 0@0 morph: aMorph