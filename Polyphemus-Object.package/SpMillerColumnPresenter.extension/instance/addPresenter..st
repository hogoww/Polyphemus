*Polyphemus-Object
addPresenter: newSubPresenter

	newSubPresenter whenActivatedDo: [ :selection | 
		selection isAssociation
			ifTrue: [ self changeSelection: selection value from: newSubPresenter ]
			ifFalse: [ self changeSelection: selection from: newSubPresenter ]
			].
	newSubPresenter owner: self.
	layout add: newSubPresenter