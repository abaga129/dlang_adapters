module adapter.queue;

struct Queue (T)
{
  private import std.container.dlist;
  
  private DList!T queue;

  public
  {
    @property void push (Stuff) (Stuff stuff)
    {
      queue.insertBack(stuff);
    }
    
    @property void pop()
    {
      queue.removeFront;
    }
    
    @property T front()
    {
      return queue.front;
    }
    
    @property T back()
    {
      return queue.back;
    }
    
    @property ulong size()
    {
      return queue.length;
    }
    
    @property bool empty()
    {
      return queue.empty;
    }
  }
}
