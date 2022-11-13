initialization
setUpTestCaseWithCache: aTestCase
	"SetUp for test cases that are modifying the resource"
	| copiedStackBuilder |
	copiedStackBuilder := stackBuilder veryDeepCopy.
	aTestCase interpreter: copiedStackBuilder interpreter.
	aTestCase memory: copiedStackBuilder memory.
	aTestCase stackBuilder: copiedStackBuilder.
	aTestCase methodBuilder: copiedStackBuilder methodBuilder.
	aTestCase postImageLoad.
	
	
