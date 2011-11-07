---
title: Introduction
layout: post
permalink: /en/Introduction.html
---

# Introduction

## What is AutoHotkey?
AutoHotkey is a powerful scripting language for Windows, focused on **auto**mation and **hotkeys**. It allows you to easily manipulate other programs, create custom hotkeys and "hotstrings", interact with the user, read, create and manage files and a lot more.

With AutoHotkey, you can also use big parts of the Windows API, interact with Web applications, use COM and more.

With these both simple and advanced features, AutoHotkey is as well suitable for beginners as for advanced programmers that want to customize their environment or automate common tasks.

AutoHotkey was originally developed by Chris Mallett. Today, there are a lot of custom versions and additions, which we will cover in [Chapter 1](What-Version-To-Choose.html).

## What can AutoHotkey do?
***Everything.*** Seriously, no one has yet found a task that can't be done with AutoHotkey in some way. Some of these ways are simple, some are not very elegant, some are rather obscure, however, they work.

## What can't AutoHotkey do?
There are just two things:
* **Performance:** AutoHotkey is a scripting language. That means, it is interpreted each time it's run. This has of course some impact on performance.
* **Compilation**: AutoHotkey cannot be used as a shell extension or something, as it can't be binary-compiled. There's a compiler, but it only compiles to an \*.exe, and it doesn't compile the AutoHotkey source code to a binary.

Both issues might be (partially) solved later by the IronAHK version.


## When and why should I use AutoHotkey?
You should use AutoHotkey because it is easy to use and to learn, because it offers simple solutions, because it has advanced features, because it is a great and helpful language to learn.

In the beginnings, you should of course start with easy things. But you're not limited to them: people write complex and large software in AutoHotkey. As an example, large parts of the recommended editor for AutoHotkey, [Scite4AutoHotkey](http://www.autohotkey.com/forum/viewtopic.php?t=58820), are written in AutoHotkey.

You can use AutoHotkey for game scripts, for quick macros, for tasks that take hours, for deep system modifications, for automating other applications through their window or through other interfaces, and a lot more.

## Index
***Note:*** This list and its order are not set in stone. Feel free to change it.

1. [What AutoHotkey version to choose?](What-Version-To-Choose.html)
2. [First steps](First-steps.html)
	- [Your first script](Your-First-Script.html)
	- [Compiling a script](Compiling.html)

3. [A guide to the manual](Guide-Manual.html)
4. [A guide to the AutoHotkey forums](Guide-Forums.html)

5. [some basic things to understand](Basic-Concepts.html)
	- [#Directives](Directives.html)
	- [Commands vs. Functions](Commands-functions.html)
	- [statements](Statements.html)
	- [Variable modes]()
		- [Expressional vs. Traditional]()
		- [Out- & InputVars]()
		- [ByRef Variables]()

6. [Let's start](Lets-start.html)

	- [the auto-execute section](auto-execute-section.html)
	- [Hotkeys]()
		- [context-sensitive hotkeys]()
		- [autofire and toggle hotkeys]()
	- [Hotstrings]()

		- [remapping]()
	- [Labels & Co.](Labels.html)

		- [useful tools: TillaGoTo]()
	- [Basic User Interaction: MsgBox & Co.]()
	- [Repeating things (Loop, While, ...)]()
	- [GUI stuff]()

		- [useful tools: Gui creators]()
	- [File management]()
	- [Storing data]()
		- [INI]()
		- [Registry]()
	- [operators]()
		- [a bit of maths]()
		- [working with strings]()
	- [multiple conditions]()

7. [useful tools: Choosing a better editor / IDE]()

8. [Documenting your code]()
	- [Why and how to document your code]()
	- [useful tools: NDocs & GenDocs]()

9. [User-defined functions]()
	- [libraries and stdLib conventions]()
	- [The standard library collection]()

10. [Into the web: downloading, HttpRequests, httpQuery() and more]()

11. [A bit of advanced stuff]()
	- [DllCalls to Windows API]()
	- [NumPut, NumGet, VarSetCapacity & stuff]()
	- [Working with bits, bytes etc. (&, |, >>, <<, ...)]()
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
    - [CWindow library (+ C# converter)]()
    - [Aero Library]()
    - [gdi+]()
