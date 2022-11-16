debugger
compiler
	"There is a trick in the image that I do not understand for now we do the same as ClassInstanceSide
	thisClass is the IV name that we have maybe should be renamed"
		^ self compilerClass new
		  environment: self oopThisClass oopEnvironment;
		  class: self