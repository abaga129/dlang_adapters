/**********************************************
 * Author(s): Ethan Reker, ctrecordingslive
 * Date: April 01, 2017
 * License: use freely for any purpose
 *
 * Examples:
 * --------------------------------------------
 * Vector!int vect;
 * vect.pushBack(3) //pushes 3 onto the vector
 * --------------------------------------------
 *
 *********************************************/
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
  
  /* Returns the elements in the vector as a dynamic array
   * The elements can then be accessed using the [] operator
   * example:
   * ----------------------------------------------------------
   * int val = vect.arr[0] ///Get element at index 0 in vector 
   *                       ///and assign it to val.
   * ----------------------------------------------------------
   */
  @property T[] arr(){        
    return elements;    
  }
}
 
