spur := SpurImage onFile: Smalltalk imagePath.
firstObject := spur firstObject.
secondObject := firstObject nextObject.
thirdObject := secondObject nextObject.
fourthObject := thirdObject nextObject.
fifthObject := fourthObject nextObject.

firstObject basicNumberOfSlots.
secondObject basicNumberOfSlots.
thirdObject basicNumberOfSlots.
fourthObject classIndex.

fifthObject classIndex.
fifthObject format.
fifthObject numberOfSlots.

fifthObject nextObject nextObject nextObject nextObject nextObject nextObject numberOfSlots.

(spur specialObjectsArray slotAt: 1) address = spur firstObject address.

1) Podemos encontrar a nil?
2) Podemos encontrar a true?
3) Podemos encontrar a false?

4) Podemos encontrar la tabla de clases?
  4.1) Como a partir de un class index (en el header del objeto) encontramos una clase en la tabla.
  4.2) Una vez que tenes la clase, recuperar el nombre de la clase (7ma variable es el nombre)
  4.3) Transformar un string en la imagen a un string normal.
  4.4) hacer un pretty print del objeto:
     - nombre de la clase
     - tipo de objeto / format
     - tamaño