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
module adapter.vector;

struct Vector(T){
  private import std.container.dlist;
  DList!T dlist;

  @property void pushBack(Stuff)(Stuff stuff){
    dlist.insertBack(stuff);
  }

  @property void popBack(){
    dlist.removeBack;
  }

  @property T back(){
    return dlist.back;
  }

  @property bool empty(){
    return dlist.empty;
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
    T[] array;
    foreach(T e; dlist){
      array ~= e;
    }

    return array;
   }
}
 
