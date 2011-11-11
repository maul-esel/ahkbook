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
