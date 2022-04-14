# Polyphemus
Visualisation of memory for Pharo images at the Virtual Machine level.

A visualisation is open with ```MyPresenter openOn: anInterpreter```.

For now there is two presenter:
```NewSpacePresenter``` for the new space.
```OldSpacepresenter``` for the old space.

New presenters are defined by subclassing ```AbstractMemoryPresenter``` and defining the method ```updateScope```.
This method initialize the instance variable scopedOop.
It should be an iterable collection of the elements that should be visualise.
For example in the case of the new space, we collect all the oop from the new space with ```scopedOop := OrderedCollection new. interpreter objectMemory allOldSpaceObjectsDo: [ :anOop | scopedOop add: anOop ]```.

Following is an old space visualisation of a PharoCandle image.
![](Documentation/OldSpaceVisualisation.jpg)
Each box represents an oop.
Default color legends:
pink = hidden oop
purple = method oop
blue = class oop
black = pinned oop
yellow = forwarder
green = default

Clicking on a box opens an inspector on a reification of the oop (based on "link to caro github").
![](Documentation/inspector.jpg)