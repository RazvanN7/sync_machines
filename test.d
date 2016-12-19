import std.algorithm : bringToFront;
import std.stdio;
import std.range;
import std.traits;

void main(string[] args)
{
    auto arr = ['4', '5', '6', '7', '1', '2', '3'];
 //   auto p = bringToFront(arr[0 .. 4], arr[4 .. $]);

    pragma(msg, hasAssignableElements!(typeof(arr)));
    pragma(msg, typeof(arr));
    pragma(msg, ElementType!(typeof(arr)));


    writeln(arr);
    arr[2] = 'x';
    writeln(arr);
    pragma(msg, isMutable!(typeof(arr.front)));
    pragma(msg, hasElaborateAssign!(typeof(arr.front)));
    pragma(msg, isNarrowString!(typeof(arr)));
    pragma(msg, hasLvalueElements!(typeof(arr)));

//    assert(p == arr.length - 4);
//    assert(arr == ['1', '2', '3', '4', '5', '6', '7']);
}
