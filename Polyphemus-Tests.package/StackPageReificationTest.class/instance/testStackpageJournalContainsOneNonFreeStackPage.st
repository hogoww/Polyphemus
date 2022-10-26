tests
testStackpageJournalContainsOneNonFreeStackPage

	"the interpreter method at this point should be the one of the initial context, we could simplify by keeping it"

	| nonEmptyPages |
	self interpretUntilMethodChangedNumberOfTimes: 3.

	reifiedMemory := PreReifiedMemory on: memory.
	stackPages := OOPStackPageJournal newWith: reifiedMemory.

	nonEmptyPages := stackPages pages reject: [ :page | page isFreePage ].

	self assert: nonEmptyPages isNotEmpty