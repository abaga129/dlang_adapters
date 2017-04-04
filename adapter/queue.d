/**
This file is part of DLang_Adapters.

    DLang_Adapters is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    DLang_Adapters is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
*/

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
