running
testAcceptingAnnoucesQueryIsReady
	"If the Annoucement is not fired, the test fails"
	SystemAnnouncer uniqueInstance weak 
		when: QueryIsReady
		do: [ ^ SystemAnnouncer uniqueInstance unsubscribe: self ].
		
	widget queryInput adapter keyDown: Character cr
		shift: false 
		meta: false
		control: false
		option: false.
		
	