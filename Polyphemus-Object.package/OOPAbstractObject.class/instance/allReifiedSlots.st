accessing-slots
allReifiedSlots

	| errorBlock |
	"I am unsure of what we should do for now I will juste anwser nilObject" 
	errorBlock := [ memory objectAt: memory nilObject ].
	^ (1 to: self oopNumberOfSlots) collect: [ :anIndex | 
		  [ self reifiedSlotAt: anIndex ] onErrorDo: errorBlock ]