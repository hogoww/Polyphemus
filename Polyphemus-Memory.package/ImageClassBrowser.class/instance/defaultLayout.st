layout
defaultLayout

	| classesLayout methodsLayout |
	
	classesLayout := SpBoxLayout newTopToBottom
		add: 'Classes' expand: false;
		add: classes;
		yourself.
	
	methodsLayout := SpBoxLayout newTopToBottom
		add: 'Methods' expand: false;
		add: methods;
		yourself.
		
	^ SpBoxLayout newTopToBottom
		spacing: 5;
		add: (SpBoxLayout newLeftToRight
			spacing: 5;
			add: classesLayout;
			add: methodsLayout;
			yourself);	
		yourself