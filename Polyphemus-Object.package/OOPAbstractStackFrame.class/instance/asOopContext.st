transformation
asOopContext

	| caller |
	context := OOPContext new.
	caller := self oopCaller.
	
	context
		sender: self oopSender;
		pc: self pc;
		stackp: self stackp;
		method: self oopMethod;
		caller: (caller ifNotNil: [caller asOopContext] ifNil: [caller]);
		closureOrNil: self hasClosure;
		receiver: self oopReceiver.

	^ context