external
selectionChanged 

	self observers do: [ :obj | obj updateFor: self ]. 