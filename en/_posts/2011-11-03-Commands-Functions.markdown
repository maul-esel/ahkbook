---
title: Commands vs. functions
layout: post
permalink: /en/Commands-functions.html
---

# Commands vs. functions

## What is it?
Unlike many other languages, AutoHotkey has 2 different ways of doing stuff: commands and functions. They differ a lot in syntax and how they handle their parameters.

### Commands
A *command* is called by writing it's name, followed by an optional comma and the parameters:

{% highlight ahk %}
MsgBox, Hi
{% endhighlight %}

Most command parameters are in *traditional mode* by default (we'll cover this later).

### Functions
Function calls **must** be enclosed by brackets:
{% highlight ahk %}
integer := round(2.34)
{% endhighlight %}

So what does the example do? It calls the builtin `round()` function with a value of `2.34` and assigns the rounded value returned by the function, i.e. 2, to the variable `integer`.

All function parameters are in *expression mode* (which will be covered together with the *traditional mode*).

Another difference shown in the example above is that functions can *return* a value to their caller. Some commands do a similar thing through *OutputVar* parameters though.

Also you will later be able to code *user-defined functions*, but you **cannot** do user-defined commands.

## AutoHotkey v2
These differences are likely to disappear for most parts in AutoHotkey v2. You'll be able to call functions as if they were commands and the other way round. This will also allow *user-defined commands*.
