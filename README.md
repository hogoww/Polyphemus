# Polyphemus
Polyphemus is a tool that gives a higher level representation of the object ordinary pointers (OOP) for the Pharo VM.
It also proposes a visualization of the memory.
Polyphmus can be used on a memory while developing the VM inside the simulator or when loading real images.  

# Usage
The simplest way to use is to execute the following:  
- using a simulated interpreter ```MemoryInspector openOn: anInterpreter```.  
- using an image```(MemoryInspector newFromImage: path)```.  

The path should be provided as a string.  
A small image is provided by default an accessible through the command: ```AbstractInspectorsTest new pathTo64BitImage.``` (https://github.com/carolahp/PharoBootstrap/) . 

# UI Details

The Memory Inspector has 4 tabs: A scripter, a class and methods browser, and the new and the old space objects in a visualisation.  
  
- The scripter has direct binding to the memory to execute queries directly inside the presenter as well as allowing to script the two visualization tabs as well.  
<img width="577" alt="Screenshot 2022-08-14 at 14 57 43" src="https://user-images.githubusercontent.com/21278554/184537989-97385246-8db6-4dac-a4c9-d7851ffa392d.png">.   
  
- The class browser allows to browse classes and methods objects similarly to the Calypso browser in Pharo (Method code is currently not implemented, but we are working on it).  
<img width="577" alt="Screenshot 2022-08-14 at 14 59 49" src="https://user-images.githubusercontent.com/21278554/184538081-a6701a93-01ec-4a52-a8d6-01e577d3b5fe.png">.  
  
- The VM uses a new and a old space to work, both working with different allocators and garbage collection.
Each space is displayed in its own tab.  
<img width="1438" alt="Screenshot 2022-08-14 at 15 00 13" src="https://user-images.githubusercontent.com/21278554/184538103-07e417e1-95d8-4904-9a33-86c9a471d06f.png">.  
  
Note: An image is only the old space.  
Therefore, loading an image into polyphemus will display an empty new space !

# Inspector
Clicking on a box opens an inspector on a reification of the oop (based on https://github.com/carolahp/PharoImageInspector).  
We do as many guess as possible to provide the user with as many high level information as possible.  
Particularly, string interpretation.  
Moreover, the object in the inspector can be navigated just like Pharo objects.  
![Uploading Screenshot 2022-08-14 at 14.56.57.png…]()

