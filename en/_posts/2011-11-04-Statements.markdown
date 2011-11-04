---
title: Statements
layout: post
permalink: /en/Statements.html
---

# Statements

## What is a statement?
A statement is something that influences what your code does without doing something itself. The most important statements in AutoHotkey are listed and explained here.

## if & else
{% highlight ahk linenos %}
if (A_Username = "genius")
	MsgBox You're a genius!
else if (A_Username = "intelligent")
	MsgBox You're intelligent.
else
{
	MsgBox You're neither a genius nor intelligent :P
	ExitApp
}
{% endhighlight %}

As you can see in line 3, you can combine and `else` and an `if` one one line.

If the thing you want to do if a condition applies is just one line (as in line 2 and 3), just put it there. The indentation is not required, but recommended to maintain readability.

If something takes more than one line, as in the last `else`, wrap it in curly braces. You may also put the first brace on the same line as the `if` / `else` or indent it.

## return
Another statement in AutoHotkey is `return`. It has 2 purposes:
* stop execution
* or: return a value from a user-defined function

Here we'll just look at the first purpose:
{% highlight ahk linenos %}
MsgBox, this is line 1! ; <== gets executed
return ; <== stops execution

MsgBox, this is line 4! ; <== will never be executed!!!
{% endhighlight %}

## Try / catch / throw
AutoHotkey\_L, AutoHotkey\_H and AutoHotkey v2 have support for `try`, `catch` and `throw` statements to handle <cite>exceptions</cite>.

- - -
### Note:
*Exceptions* are a special way of error handling:
* if a function or command or anything else discovers an error, and it can't continue (or doesn't want to), it *throws* an exception.
* the caller of the function can *catch* this exception (by wrapping the call in a `try ... catch` block). Or it can just do nothing.
* if an exception isn't catched, it is passed further to the caller of the caller of the caller ... of the function that caused the exception.
* if an exception isn't caught at all, AutoHotkey displays an error message and exits.

- - -

An example:
{% highlight ahk linenos %}
try {
	Run non-existant.exe
}
catch {
	MsgBox An exception occurred.
}
{% endhighlight %}

In this example, the script tries to *run*, to execute, a non-existant file. This will cause an exception, which is caught by the catch block. There's no `throw` statement in here because the exception is thrown by the built-in `run` command.
