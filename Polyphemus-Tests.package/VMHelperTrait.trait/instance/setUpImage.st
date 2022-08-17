initialization
setUpImage
	interpreter := self newInterpreter 
		pluginList: { }.
		
	"You currently have to setup the path by hand, I do not rememeber/know how to get the directory from a repository, to do a correct relative path
	Sorry :3"
	interpreter openOn: self pathTo64BitImage.
	interpreter initStackPages.
	interpreter loadInitialContext.