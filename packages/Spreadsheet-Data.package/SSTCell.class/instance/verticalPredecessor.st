accessing - extension
verticalPredecessor

	^ self topCell ifNil: [
		(self data cellAtRowIndex: self data rows last index colIndex: self columnIndex - 1) ifNil: [
			self data cellAtRowIndex: self data rows last index colIndex: self data columns last index]]