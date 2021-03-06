/**
This module is an implementation of a double-ended queue based on 
std/containers/dlist

Authors: Ethan Reker, ctrecordingslive@gmail.com
Date: April 01, 2017
*/
module adapter.deque;

@safe unittest
{
  import adapter.deque;
  
}


struct Deque (T)
{ 
  private import std.container.dlist;
  private DList!T dlist;
  
  public
  {
    
/**
Pushes $(D stuff) onto the front of the Deque. 
*/

    @property void pushBack(Stuff)(Stuff stuff)
    {
      dlist.insertBack(stuff);
    }
    
    @property void pushFront (Stuff) (Stuff stuff)
    {
      dlist.insertFront(stuff);
    }

    @property void popFront(){
      dlist.removeFront();
    }

    @property void popBack(){
      dlist.removeBack();
    }
    
    @property T front()
    {
      return dlist.front;
    }
    
    @property T back()
    {
      return dlist.back;
    }
    
    @property bool empty()
    {
      return dlist.empty;
    }
  }
}
