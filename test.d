import std.stdio;
import adapter.deque;
import adapter.set;
import adapter.vector;

void main(string[] args){
	writeln("Testing Modules");

	writeln("\nBegin Deque Test");
	Deque!int deque;
	deque.pushBack(3);
	deque.pushFront([1,2]);
	deque.pushBack([6,7,8]);

	write("Contents: ");
	while(!deque.empty()){
		write(deque.front);
		write(", ");
		deque.popFront;
	}

	writeln("\n\nBegin Set Test");
	Set!int set;
	set.insert(3);
	set.insert([5,3,1]);
	writeln(set.arr);
	set.clear;
	writeln(set.arr);

	writeln("\nBegin Vector Test");
	Vector!int vector;
	vector.pushBack(3);
	vector.pushBack([5,6,7,8]);
	writeln(vector.arr);

}