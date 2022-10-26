initialization
computeFields

	"Changing the order may improve robustness and perf but for now in the order in the frame."

	| stackpages |
	stackpages := memory interpreter stackPages.
	method := memory objectAt: (stackpages longAt: self offsetForMethod).

	context := memory objectAt:
		           (stackpages longAt: self offsetForContext).

	flags := OOPStackFrameFlag newFor: self.

	receiver := memory objectAt:
		            (stackpages longAt: self offsetForReceiver)