I represent a memory zone that could not be reified and is supposed to be wrong.

size := My size should be equal to self oopByteSize if the numSlot part of my header is not corrupted or 0 if it is.

couldBeObjLists := This list should not be initialized except if somebody called recoverCouldBeObj then this list contains the potential object that are inside the zone I represent.

referencers := This is a collection containing all the objects that have a reference poiting to my address. This is an optimization to avoid s heap traversal with allRefencers.

Depending on my address, I can be replace by a freeObject.

API
recoverCouldBeObj try to decode the byte that I contain to found potential object.
replaceInRefencersWith: anOop replace myself for anOop in all of my refencers.
replaceWithObject: anOop replace myself for anOop in the memory.