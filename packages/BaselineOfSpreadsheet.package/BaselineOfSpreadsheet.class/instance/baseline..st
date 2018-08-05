baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec baseline: 'StatisticsWorkbench' with: [spec repository: 'github://hpi-swa-teaching/StatisticsWorkbench:submission'].
			spec baseline: 'Pheno' with: [spec repository: 'github://tom95/Pheno:master/src'; loads: #(tests)].
			spec
				package: 'Spreadsheet-Data' with:[spec requires: #('Pheno' 'StatisticsWorkbench')];
				package: 'Spreadsheet-Grid' with:[spec requires: #('Pheno' 'StatisticsWorkbench')];
				package: 'Spreadsheet-Core'with:[spec requires: #('Pheno' 'StatisticsWorkbench')];
				package: 'Spreadsheet-Tests' with: [spec requires: #('Spreadsheet-Core' 'Spreadsheet-Data' 'Spreadsheet-Grid')].
			spec
				group: 'default' with: #('Spreadsheet-Core'  'Spreadsheet-Data' 'Spreadsheet-Grid');
				group: 'tests' with: #('Spreadsheet-Tests')]