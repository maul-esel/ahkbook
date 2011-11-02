---
title: Introduction
layout: default
permalink: /en/Introduction.html
---

# Introduction
This project is intended to provide a collection of tutorials, scripts, technologies and a reference for AutoHotkey.
**It is not intended to replace the excellent AHK help file!**

## Contribute
Please help me with this project! Anyone who has a github account, fork it! Add your own posts!

You can use Markdown, Textile, HTML, ...
Learn more about [Jekyll](https://github.com/mojombo/jekyll#readme).

When including code, make it work for all versions (if possible). Example:

{% highlight ahk %}
; AutoHotkey classic or IronAHK
DllCall("MyFunction", "uint", ptr)
{% endhighlight %}

{% highlight ahk %}
; AutoHotkey_L or AutoHotkey v2
DllCall("MyFunction", "ptr", ptr)
{% endhighlight %}

(doesn't work)

Anyone else who has (even minor) questions / suggestions / improvements, PM me at the (german or english) AHK forum or at github!

## Index:
***Note:*** This list and its order are not set in stone. Feel free to change it.

1. [What AutoHotkey version to choose?](What-Version-To-Choose.html)
2. [Coding Environment](Coding-Environment.html)
3. [First steps]()
	- [Your first script]()
	- [Compiling a script](Compiling.html)

4. [some basic things to understand]()
	- [#Directives]()
	- [Commands vs. Functions]()
	- ["statements" (if, else, ...)]()
	- [Variable modes]()
		- [Expressional vs. Traditional]()
		- [Out- & InputVars]()
		- [ByRef Variables]()

5. [A guide to the manual]()
6. [A guide to the AutoHotkey forum]()

7. [Let's start]()
	- [Hotkeys & Co.]()
	- [Basic User Interaction: MsgBox & co.]()
	- [Repeating things (Loop, While, For, ...)]()
	- [GUI stuff]()
	- [File management]()
	- [Storing data]()
		- [INI]()
		- [Registry]()

10. [Documenting your code]()
	- [Why and how to document your code]()
	- [tools (NDocs & GenDocs)]()

11. [User-defined and builtin functions]()

12. [Into the web: downloading, HttpRequests, httpQuery() and more]()

13. [A bit of advanced stuff]()
	- [DllCalls to Windows API]()
	- [NumPut, NumGet, VarSetCapacity & stuff]()
	- [Working with bits, bytes etc. (&&, ||, >>, <<, ...)]()
	- [Streams and file headers]()

14. [custom GUI controls]()

	- [embedding browser in GUI etc.]()

15. [COM]()
	- [a short introduction]()
	- [StdLib & native COM]()
	- [automating IE & FF]()
	- [automating Office]()
	- [interfaces]()

16. [OOP]()
	- [Objects & Arrays]()
	- [Classes]()

17. [Libraries]()
    - [CWindow library]() (+ C# converter)
    - [Aero Library]()
    - [gdi+]()
