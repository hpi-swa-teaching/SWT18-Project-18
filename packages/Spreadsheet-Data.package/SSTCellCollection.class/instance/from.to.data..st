as yet unclassified
from: startCell to: endCell data: aGridData

	^ (self new
		data: aGridData;
		createFrom: startCell to: endCell; 
		yourself)