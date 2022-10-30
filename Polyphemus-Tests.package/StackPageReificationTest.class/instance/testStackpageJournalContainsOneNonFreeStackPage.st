tests
testStackpageJournalContainsOneNonFreeStackPage
	| nonEmptyPages |
	nonEmptyPages := stackPages pages reject: [ :page | page isFreePage ].

	self assert: nonEmptyPages isNotEmpty