tests
testStackPageReceiverAreColoredProperly

	| inspector customColorProvider colorOopDict colorDescriptionDict chosenColor notebook |
	self fail.
	self interpretUntilMethodChangedNumberOfTimes: 19.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.
	chosenColor := Color green.

	colorOopDict := Dictionary new.
	colorOopDict add: stackPages allReceiver -> chosenColor.

	colorDescriptionDict := Dictionary new.
	colorDescriptionDict add: chosenColor -> 'stackpage receiver'.

	customColorProvider := CustomColorProvider new.
	customColorProvider
		colorOopDictionary: colorOopDict;
		colorDescriptionDictionary: colorDescriptionDict.

	inspector := MemoryInspector openOn: reifiedMemory.
	notebook := inspector presenter pages.
	(notebook at: 3) retrievePresenter memoryPresenter updateColorProviderTo: customColorProvider.
	(notebook at: 4) retrievePresenter memoryPresenter updateColorProviderTo: customColorProvider.
	self halt.

	self assert: true