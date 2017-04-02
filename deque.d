/**
This module is an implementation of a double-ended queue based on 
std/containers/dlist

Authors: Ethan Reker, ctrecordingslive@gmail.com
Date: April 01, 2017
*/
module adapters.deque;

@safe unittest
{
  import adapters.deque;
  
}


class Deque (T)
{
  import std.cointainers.dlist;
  
  private DList!T dlist;
  
  this.()
  {
    dlist = DList!T.init;
  }
  
  public
  {
    
/**
Pushes $(D stuff) onto the front of the Deque. 
*/
    @property void pushBack(Stuff)(Stuff stuff)
    {
      dlist.insertFront(stuff);
    }
    
    @property void pushFront (Stuff) (Stuff stuff)
    {
      dlist.insertBack(stuff);
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
