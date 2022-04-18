initialization
updateStatsAndLegend: aColorProvider

	| statline collect |
	collect := memoryPresenter allNodes collect: [ :aNode | aNode paint ] into: Bag new.

	collect doWithOccurrences: [ :key :value | 
		statline := self
			            stat: value
			            lineFor: 'representing ', (aColorProvider descriptionForColor: key)
			            withColor: key.
		legend canvas add: statline ].

	RSVerticalLineLayout new
		gapSize: 3;
		on: legend canvas nodes.