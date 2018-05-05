initialization
initialize 
	| model sysWindow |

	model := Model new.
      sysWindow := SystemWindow new.
      sysWindow model: model.
	sysWindow setLabel: 'Spreadsheet Tool'.

	self tablesWindow: (SpreadsheetTablesWindow newWithTool: self).
      sysWindow addMorph: self tablesWindow frame: (0@0 corner: 1@1).

      sysWindow openInWorld. 