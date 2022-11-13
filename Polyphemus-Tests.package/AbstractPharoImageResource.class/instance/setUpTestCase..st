initialization
setUpTestCase: aTestCase
	"SetUp for test cases that are not modifying the resource"
	aTestCase interpreter: interpreter.
	aTestCase memory: memory.
	aTestCase reifiedMemory: reifiedMemory.
	
	"Explicitily set builders to nil because if the test case do not modify the resource, they should not use the builders"
	aTestCase methodBuilder: nil.
	aTestCase stackBuilder: nil.