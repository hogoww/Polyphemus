# Polyphemus
Visualisation of memory for Pharo images at the Virtual Machine level.

A visualisation is open with ```MyPresenter openOn: anInterpreter```.

For now there are two presenters:  
```NewSpacePresenter``` for the new space.
```OldSpacepresenter``` for the old space.

New presenters are defined by subclassing ```AbstractMemoryPresenter``` and defining the method ```updateScope```.
This method initialize the instance variable scopedOop.
It should be an iterable collection of the elements that should be visualised.
For example in the case of the new space, we collect all the oop from the new space with ```scopedOop := OrderedCollection new. interpreter objectMemory allOldSpaceObjectsDo: [ :anOop | scopedOop add: anOop ]```.

Following is an old space visualisation of a PharoCandle image.
<img width="900" alt="OldSpaceVisualisation" src="https://user-images.githubusercontent.com/17796500/163356978-614550ca-8e7a-4ebb-9c27-0f7888c1edeb.png">
  
Each box represents an oop.  
Default color legends:  
pink = hidden oop  
blue = class oop 
purple = method oop   
black = pinned oop  
yellow = context oop  
green = default  

Clicking on a box opens an inspector on a reification of the oop (based on https://github.com/carolahp/PharoImageInspector).
<img width="900" alt="inspector" src="https://user-images.githubusercontent.com/17796500/163357261-85441198-4a66-47d8-aa64-fa59c3bf9efb.png">
