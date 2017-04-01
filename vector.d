module vector;
class Vector(T){    
  T[] elements; 
  
  void pushBack(T element){        
    elements ~= element;    
  }
  
  @property void popBack(){
    --elements.length;
  }
  
  T at(size_t index){
    return elements[index];
  }
  
  @property T front(){
    return elements[0];
  }
  
  @property T back(){
    return elements[elements.length];
  }
  
  @property T[] arr(){        
    return elements;    
  }
}
