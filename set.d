module set;
class Set(T){    
  T[] elements;    void insert(T element){        if(!this.contains(element))            elements ~= element;    }    T get(int index){        return elements[index];    }    bool contains(T element){        bool has = false;        foreach(T; elements){            if(T == element)                has = true;        }        return has;    }    T[] arr(){        return elements;    }}
