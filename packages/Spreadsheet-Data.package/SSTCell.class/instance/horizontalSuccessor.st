accessing - extension
horizontalSuccessor

	^ self rightCell ifNil: [
		(self data cellAtRowIndex: self row index + 1 colIndex: self data columns first index) ifNil: [
			self data cellAtRowIndex: self data rows first index colIndex: self data columns first index]]