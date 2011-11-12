---
title: Structures
layout: post
permalink: /en/Structures.html
---

# Structures

A structure is simply a section of memory that contains structured data. Each piece of data in the structure is known as a "member" of the structure. Structures and their members no meaning on their own; they are simply blocks of data.

## size of structures
The size of a given structure is equal to the sum of the sizes of each member. For example, the [Rect](http://msdn.microsoft.com/en-us/library/dd162897%28v=VS.85%29.aspx) structure is defined as follows:

    typedef struct _RECT {
      LONG left;
      LONG top;
      LONG right;
      LONG bottom;
    } RECT, *PRECT;

This shows to following information:

* The name of the structure (RECT)
* The names of the members (left, top, right, and bottom)
* The types of the members (LONG, LONG, LONG, and LONG)

Let's look at the last point in detail. The type of a member determines its size; a LONG is 4 bytes, a SHORT is two bytes, and a CHAR is one byte. In this case all of the members of the Rect structure are of type LONG, and therefore each member is 4 bytes in size. With four members of four bytes each, the total size of the structure is 16 bytes.

## structure members
In order to access a member of a structure, one must know its type and offset. For example, accessing the "bottom" member of the Rect structure requires knowledge that it is of type LONG, and is the fourth member of the structure, after three members with the type LONG. To calculate the offset, we must walk through every member before it. A demonstration follows:

1) The offset starts at 0. That means the current offset is 0.
2) The "left" member is a LONG, and therefore is 4 bytes. That means the current offset is 0+4, or 4.
3) The "top" member is a LONG, and therefore is 4 bytes. That means the current offset is 4+4, or 8.
4) The "right" member is a LONG, and therefore is 4 bytes. That means the current offset is 8+4, or 12.
5) The "bottom" member has been reached, so we stop here. The final offset is 12.

Since we now know the type and offset of the member, we are now able to access it.

## initializing structures
AutoHotkey has several facilities for creating structures. Before creating a structure, however, one must ensure there is a section of memory large enough to hold it.

Structures are often created in variables, for convenience and readability reasons. Since variables begin with a size of 0, it is nearly always necessary to expand it to the size of the structure. For this purpose, a function known as `VarSetCapacity()` may be used:

{% highlight ahk linenos %}; any AutoHotkey version
VarSetCapacity(RectVariable,16)
{% endhighlight %}

The above code would set the size of a variable to 16 bytes. This allows `Variable` to hold a Rect structure, as such a structure is also 16 bytes.

There is something to be aware of when setting the capacity of a variable: the memory allocated to the variable is not cleared. For example, if a Rect structure is supposed to contain 0 as the value of all members when created, it may not be so if the variable was not explicitly set to 0. That is, there may be unused data present in the memory within the variable. This can be mitigated by having VarSetCapacity set all the bytes in the variable to a certain number, usually 0:

{% highlight ahk linenos %}; any AutoHotkey version
VarSetCapacity(RectVariable,16,0)
{% endhighlight %}

The last parameter, `FillByte`, specifies the value to fill all bytes in the variable with. In this case, the variable that will contain our Rect structure has been initialized to have all members set to 0.

### member types
AutoHotkey provides a small set of types that map to just about any type one would need. Mapping the types of a structure with those built into AutoHotkey can sometimes be a challenge, however. Sometimes, it is simply something one needs to memorize; DWORD becomes UInt, LONG becomes Int, HANDLE becomes UPtr, etc. The mapping is not random, however: they are based on their sizes and certain other properties such as signedness and whether they are the same size across 32-bit and 64-bit operating systems.

It is helpful to memorize the simplest ones such as DWORD mapping to UInt, and look up any others that are unfamiliar. It is not feasible to memorize them all, but a [good reference](http://msdn.microsoft.com/en-us/library/aa383751(v=vs.85).aspx) will be very useful when working with unknown types. A list of commonly used type mappings follow:

* PVOID becomes UPtr
* DWORD becomes UInt
* CHAR becomes Char
* SHORT becomes Short
* LONG becomes UInt
* LPCTSTR becomes Str

Mapping the type HCURSOR to an AutoHotkey type:

1) The reference page contains the following in the HCURSOR row: "typedef HICON HCURSOR;". This means that HCURSOR is a form of the type HICON.
2) The reference page contains the following in the HICON row: "typedef HANDLE HICON;". This means that HICON is a form of the type HANDLE.
3) The reference page contains the following in the HANDLE row: "typedef PVOID HANDLE;". This means that HANDLE is a form of the type PVOID.
4) PVOID is known to map to the AutoHotkey type UPtr.

When accessing something with the type HCURSOR, use the AutoHotkey type UPtr.

## setting members
Members of a structure can be set using the `NumPut()` function:

{% highlight ahk linenos %}; any AutoHotkey version
NumPut(5000,RectVariable,12,"UInt")
{% endhighlight %}

Here, we have set the member at offset 12 (which was "bottom", as mentioned earlier) to the value 5000. Since we know that LONG maps to UInt, we have used UInt as the type.

In other words, the Rect structure's "bottom" member was set to 5000.

## retrieving members

Members of a structure can be retrieved using the `NumGet()` function:

{% highlight ahk linenos %}; any AutoHotkey version
BottomValue := NumGet(RectVariable,12,"UInt")
{% endhighlight %}

Here, we have retrieved the member at offset 12 (which was "bottom", as mentioned earlier), and stored it in the variable `BottomValue`. Since we know that LONG maps to UInt, we have used UInt as the type.

In other words, the Rect structure's "bottom" member was retrieved and stored in a variable.

## Summary
* Structures are sections of memory filled with structured data.
* Members are specific independant parts in the data.
* Members are accessed by their type and offset.
* Each type almost always needs to be mapped to an AutoHotkey built in type to be used.
* AutoHotkey functions useful when working with structures are `VarSetCapacity()`, `NumPut()`, and `NumGet()`.