as yet unclassified
calculateResult

	| currentContent expression result function cellPointCollection cellTextCollection |
	currentContent := self text asString.
	self calcRepresentation: currentContent.
	
	(currentContent isEmpty) ifFalse: [ 
		((currentContent first) = $=) ifTrue: [
				expression := currentContent allButFirst.
				function := SpreadsheetRegexMatcher getFunctionFromString: expression.
				function ifNotNil: [
						cellPointCollection := SpreadsheetRegexMatcher getCellIndicesForString: expression.
						cellTextCollection := self grid getCellContentForPointCollection: cellPointCollection.
						result := SpreadsheetMath perform: function on: cellTextCollection.
					]
				ifNil: [
						result := Compiler evaluate: expression.
					].
				self text: result asString.
			].
		].
	 self writeContent.