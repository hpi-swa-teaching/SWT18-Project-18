event handling
step 
	"Used to simulate a slower doubleClick"
	self state = #doubleClick ifTrue: [
		self timer: self timer + 1.
		self timer = 20 ifTrue: [
			self stopWaitForDoubleClick]]