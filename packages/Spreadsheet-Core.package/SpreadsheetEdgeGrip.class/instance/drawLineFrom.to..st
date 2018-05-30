as yet unclassified
drawLineFrom: startPoint to: endPoint 

	self moveLine: (LineMorph from: startPoint to: endPoint color: Color blue width: 1).
	self grid addMorph: self moveLine.