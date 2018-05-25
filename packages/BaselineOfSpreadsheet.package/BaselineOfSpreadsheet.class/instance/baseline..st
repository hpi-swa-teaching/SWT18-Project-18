baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Pheno' with: [spec repository: 'github://tom95/Pheno:master/src'; loads: #(tests)];
				package: 'Spreadsheet-Core'with:[spec requires: #('Pheno')];
				package: 'Spreadsheet-Tests' with: [spec requires: #('Spreadsheet-Core')];
				yourself.
			spec
				group: 'default' with: #('Spreadsheet-Core');
				group: 'tests' with: #('Spreadsheet-Tests')];
				yourself