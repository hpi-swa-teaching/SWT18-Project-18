external
externalOutput: aText
	" observers need to have a text method, otherwise nothing happen "
	
	self editorObservers do: [ :obj | [obj text: aText] on: Error do: [] ]. 