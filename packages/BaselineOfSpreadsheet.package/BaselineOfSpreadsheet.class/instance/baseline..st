baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				
				package: 'Spreadsheet-Core';
				package: 'Spreadsheet-Tests' with: [spec requires: #('Spreadsheet-Core')];
				yourself.
			spec
				group: 'default' with: #('Spreadsheet-Core');
				group: 'tests' with: #('Spreadsheet-Tests')];
				yourself