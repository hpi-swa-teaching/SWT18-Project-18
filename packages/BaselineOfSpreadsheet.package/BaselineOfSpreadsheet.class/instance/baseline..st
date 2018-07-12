baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Pheno' with: [spec repository: 'github://tom95/Pheno:master/src'; loads: #(tests)];
				package: 'Spreadsheet-Data'with:[spec requires: #('Pheno')];
				package: 'Spreadsheet-Grid'with:[spec requires: #('Pheno')];
				package: 'Spreadsheet-Core'with:[spec requires: #('Pheno')];
				package: 'Spreadsheet-Tests' with: [spec requires: #('Spreadsheet-Core' 'Spreadsheet-Data' 'Spreadsheet-Grid')];
				yourself.
			spec
				group: 'default' with: #('Spreadsheet-Core' 'Spreadsheet-Data' 'Spreadsheet-Grid');
				group: 'tests' with: #('Spreadsheet-Tests')];
				yourself