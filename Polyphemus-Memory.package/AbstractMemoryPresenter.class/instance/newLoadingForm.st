initialization
newLoadingForm
	| canvas |
	canvas := RSCanvas new.
	canvas extent: 300 asPoint.
	canvas add: (RSLabel new
		text: 'Loading data...';
		color: 'black';
		yourself).
	^ canvas asForm