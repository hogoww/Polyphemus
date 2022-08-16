# Polyphemus
Polyphemus is a tool that gives a higher level representation of the object ordinary pointers (OOP) for the Pharo VM.
It also proposes a visualization of the memory.
Polyphemus can be used on a memory while developing the VM inside the simulator or to explore real images.  

# Usage
The simplest way to use is to execute the following:  
- using a simulated interpreter ```MemoryInspector openOn: anInterpreter```.  
- using an image```(MemoryInspector newFromImage: path) open```.  

The path should be provided as a string.  
A [small image](https://github.com/carolahp/PharoBootstrap/) is provided by default and its path is accessible through the message send: ```AbstractInspectorsTest new pathTo64BitImage.```.  

# UI Details

The Memory Inspector has 4 tabs: A scripter, a class and methods browser, and the new and the old space objects visualisation.  
  
- The scripter has direct binding to the memory to execute queries directly inside the presenter as well as allowing to script the two visualization tabs as well.  
It allows for example to write queries on the objects without vizualizing them.  
For example: ```ReifiedMemory select: [ :anOop | anOop isCompiledMethod ]```.   
  
  
<p align="center">  
<img width="577" alt="Screenshot 2022-08-14 at 14 57 43" src="https://user-images.githubusercontent.com/21278554/184537989-97385246-8db6-4dac-a4c9-d7851ffa392d.png">.   
</p>  
  

- The class browser allows to browse classes and methods objects similarly to the Calypso browser in Pharo (Method code is currently not implemented, but we are working on it).  
Using the right click on a given method or class allows you to inspect the selected object.
   
    
<p align="center">
<img width="577" alt="Screenshot 2022-08-14 at 14 59 49" src="https://user-images.githubusercontent.com/21278554/184538081-a6701a93-01ec-4a52-a8d6-01e577d3b5fe.png">  
</p>
  
  
- The VM uses a new and a old space to work, both working with different allocators and garbage collection.
Each space is displayed in its own tab.
They also come with a few queries illustrating the possibilities of this visualization (Scale, Scope, Select, Statistics).
These are applicable directly on the visualizations tabs.
  
  
<p align="center">  
<img width="1438" alt="Screenshot 2022-08-14 at 15 00 13" src="https://user-images.githubusercontent.com/21278554/184538103-07e417e1-95d8-4904-9a33-86c9a471d06f.png">. 
</p>  
  
  
Note: An image is only the old space.  
Therefore, loading an image into Polyphemus will display an empty new space !

# Inspector
Clicking on a box opens an inspector on a reification of the oop (based on [carolina's inspector](https://github.com/carolahp/PharoImageInspector)).  
We do as many guess as possible to provide the user with as many high level information as possible.  
Particularly, string interpretation.  
Moreover, the object in the inspector can be navigated just like Pharo objects.  
  
  
<p align="center">  
<img width="697" alt="Screenshot 2022-08-14 at 14 56 57" src="https://user-images.githubusercontent.com/21278554/184538511-de8af681-7a66-455f-8301-aa9e93d44d02.png">
</p>   
  
# Concept

The main idea of Polyphemus is to provide a higher level vision of VMs OOPs.  
However, this is meant to be a basis for Pharo tools.  
Particularly we are investigating how to investigate memory corrupt and how to recover dead images.  
We were able to save a dead image, see the other Ressources section.  

# Other Ressources
[Video submited to the Esug'22 Innovation Technology Awards](https://youtu.be/zf3cCtNW830) (Vote pending).  
[Report of how we used Polyphemus to resurrect a dead image](https://github.com/hogoww/Polyphemus/blob/main/Documentation/ResurrectingDeadImages/ResurrectingDeadImages.pdf).  
