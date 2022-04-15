initialization
updateStatsAndLegend: aColorProvider

	| statline collect |
	collect := Dictionary new.
	memorySpace canvas nodes do: [ :node | 
		| color |
		color := node paint.
		(collect includesKey: color)
			ifTrue: [ collect at: color put: (collect at: color) + 1 ]
			ifFalse: [ collect add: color -> 1 ] ].

	collect keysDo: [ :key | 
		statline := self
			            stat: (collect at: key)
			            lineFor: 'representing ', (aColorProvider descriptionForColor: key)
			            withColor: key.
		legend canvas add: statline ].

	RSVerticalLineLayout new
		gapSize: 3;
		on: legend canvas nodes.