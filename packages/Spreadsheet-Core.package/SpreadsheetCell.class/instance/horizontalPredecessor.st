accessing - extension
horizontalPredecessor

	^ self leftCell ifNil: [
		(self data cellAtRowIndex: self row index - 1 colIndex: self data columns last index) ifNil: [
			self data cellAtRowIndex: self data rows last index colIndex: self data columns last index]]