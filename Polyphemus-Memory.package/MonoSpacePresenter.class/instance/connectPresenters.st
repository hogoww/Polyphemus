accessing
connectPresenters

	queryWidget 
		transmitTo: memoryPresenter
		transform: [ self halt . memoryPresenter executeQuery ]
