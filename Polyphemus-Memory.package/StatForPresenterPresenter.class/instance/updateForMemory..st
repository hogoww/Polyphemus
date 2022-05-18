initialization
updateForMemory: memoryPresenter

	| statline |
	self canvas nodes ifNotEmpty: [ self canvas nodes copy do: #remove ].
	[ 
	statList := Bag new.
	memoryPresenter allNodes collect: [ :aNode | aNode paint ] into: statList.
	statList doWithOccurrences: [ :key :value | 
		statline := self
			            stat: value
			            lineFor: 'representing ', (memoryPresenter colorProvider descriptionForColor: key)
			            withColor: key.
		self canvas add: statline ].
	] onErrorDo: [ :e| self canvas add: (RSLabel new text: 'Could not produce legend'; fontSize: 12 ; yourself).].

	RSVerticalLineLayout new
		gapSize: 5;
		on: self canvas nodes.
	 self canvas when: RSExtentChangedEvent do: [ :evt |
		evt canvas zoomToFit.
		evt signalUpdate.
		 ].
	self canvas zoomToFit.
	self canvas signalUpdate.