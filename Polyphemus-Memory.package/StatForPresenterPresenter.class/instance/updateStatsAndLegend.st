initialization
updateStatsAndLegend

	| statline |

	self canvas nodes ifNotEmpty: [ self canvas nodes copy do: #remove ].
	[self calculateStats. 
	statList doWithOccurrences: [ :key :value | 
		statline := self
			            stat: value
			            lineFor: 'representing ', (colorProvider descriptionForColor: key)
			            withColor: key.
		self canvas add: statline ].
	] onErrorDo: [ self canvas add: (RSLabel new text: 'Could not produce legend'; fontSize: 12 ; yourself).].

	RSVerticalLineLayout new
		gapSize: 5;
		on:  self canvas nodes.
	 self canvas when: RSExtentChangedEvent do: [ :evt |
		evt canvas zoomToFit.
		evt signalUpdate.
		 ].
	self canvas signalUpdate.