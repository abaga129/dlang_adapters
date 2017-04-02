module adapter.set;

struct Set (T){
  
  private T[] elements;
  void insert(T element[]){
    foreach(e; element)
    if(!this.contains(e))
      elements ~= e;
  }

  void insert(T element){
    if(!this.contains(element))
      elements ~= element;
  }
  
  //Remove element from the set.
  void erase(T element){
    int index = this.find(element);
    if(index != -1)
      elements = elements[0..index]~elements[index+1..elements.length];
  }
  
  @property void clear(){
    elements.length = 0;
  }
  
  T get(int index){
    return elements[index];
  }
  
  //Returns the index of the given element in the set. If the element doesn't
  //exist, return -1
  int find(T element){
    for(int i = 0; i < elements.length; ++i)
      if (elements[i] == element) return i;
    return -1;
  }
  
  bool contains(T element){
    bool has = false;
    foreach(T; elements){
      if(T == element)
        has = true;
    }
    return has;
  }
  
  @property bool empty(){
    if(elements.length==0) return true;
    else return false;
  }
  
  @property ulong size(){
    return elements.length;
  }
  
  @property T[] arr(){
    return elements;
  }
}
