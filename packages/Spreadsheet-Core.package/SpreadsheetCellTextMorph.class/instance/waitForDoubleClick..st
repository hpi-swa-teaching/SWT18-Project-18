event handling
waitForDoubleClick: evt
	
	self state: #doubleClick.
	(self future: self doubleClickTime) resetDoubleClick: evt.
	"doubleClickTime := HandMorph doubleClickTime.
	HandMorph doubleClickTime: self doubleClickTime.
	evt hand waitForClicksOrDrag: self editor event: evt selectors: #( nil #doubleClick: nil nil) threshold: 0. 
	HandMorph doubleClickTime: doubleClickTime."