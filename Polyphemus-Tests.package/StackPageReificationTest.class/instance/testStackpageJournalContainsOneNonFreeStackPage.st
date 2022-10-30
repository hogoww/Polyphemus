tests
testStackpageJournalContainsOneNonFreeStackPage

	"the interpreter method at this point should be the one of the initial context, we could simplify by keeping it"

	| nonEmptyPages |

	nonEmptyPages := stackPages pages reject: [ :page | page isFreePage ].

	self assert: nonEmptyPages isNotEmpty