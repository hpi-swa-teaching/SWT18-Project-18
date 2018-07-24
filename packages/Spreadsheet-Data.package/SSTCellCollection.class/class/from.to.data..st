as yet unclassified
from: startCell to: endCell data: data

	^ (self new
		data: data;
		createFrom: startCell to: endCell)