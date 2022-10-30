tests
testStackpageJournalMostRecentlyUsedIsTheSameAsInterpreter

	"the interpreter method at this point should be the one of the initial context, we could simplify by keeping it"

	self interpretUntilMethodChangedNumberOfTimes: 3.

	self assert: stackPages mostRecentlyUsedPage associatedPage equals: interpreter stackPages mostRecentlyUsedPage.

