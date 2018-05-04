initialize
initialize 
	| model window grid|

	model := Model new.
      window := SystemWindow new.
      window model: model.
	window setLabel: 'Spreadsheet Tool'.

      grid := SpreadsheetGrid new.
      window addMorph: grid frame: (0@0 corner: 1@1).    	

      window openInWorld. 