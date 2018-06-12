Expression Evaluation
parameterValuesFrom: anExpression
	
	|cellPointCollection|
	cellPointCollection := SpreadsheetRegexMatcher getCellIndicesForString: anExpression.
	^ self grid getCellContentForPointCollection: cellPointCollection.