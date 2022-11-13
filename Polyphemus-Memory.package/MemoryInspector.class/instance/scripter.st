accessing
scripter
	self pages detect: [ :aPage | aPage activePresenter isKindOf: ReifiedMemoryScripter ] 
		ifFound: [ :aPage | ^ aPage activePresenter ]