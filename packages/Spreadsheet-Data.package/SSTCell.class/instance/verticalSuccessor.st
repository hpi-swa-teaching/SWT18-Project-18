accessing - extension
verticalSuccessor

	^ self bottomCell ifNil: [
		(self data cellAtRowIndex: self data rows first index colIndex: self column index + 1) ifNil: [
			self data cellAtRowIndex: self data rows first index colIndex: self data columns first index]]