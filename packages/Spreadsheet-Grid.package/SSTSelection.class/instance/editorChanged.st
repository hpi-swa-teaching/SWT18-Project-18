external
editorChanged 

	self editorObservers do: [ :obj | obj updateForEditor: self editor ]. 