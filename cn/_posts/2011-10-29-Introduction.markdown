---
title: Introduction
layout: post
permalink: /en/Introduction.html
---

# 简介

## AutoHotkey是什么？
AutoHotkey是用在Windows上的强大脚本语言, 专注于 **自动化**和**热键**。通过它您可以轻松地操作其他程序，创建自定义热键和“热字串”，和用户交互以及读取、创建和管理文件等许多事情。

有了AutoHotkey，您还可以使用大部分Windows API，与网络应用程序交互，使用COM等等。

通过这些简单和高级的功能，AutoHotkey既适合初学者，也适合那些想自定义自己的环境或自动化常见任务的高级编程用户。

AutoHotkey最初由Chris Mallett开发。如今，出现了许多自定义版本和附加工具，这些我们将在[第1章](What-Version-To-Choose.html)进行介绍。

## AutoHotkey能做什么？
***几乎一切。***除了制作土司，还没有人发现使用AutoHotkey 无法完成的任务。其中一些实现方式很简单，另一些则不是很优雅，还有一些则相当难解，不过他们都可以实现。

## AutoHotkey不能做什么？
只有两种情况:
* **性能：** AutoHotkey 是脚本语言。这里是指它是在运行时解释执行的。这对性能有较大限制。
* **编译**: AutoHotkey无法用于外壳扩展或类似的功能，因为它无法二进制编译。尽管有一个编译器，但它只是打包成一个 \*.exe，而不是把AutoHotkey源代码编译成二进制。

这两个问题以后也许都会在 IronAHK 版本中（部分）解决。

## 为什么您应该使用AutoHotkey？

您应该使用AutoHotkey，因为它易于学习、易于使用，因为它提供了简易的解决方案，因为它拥有高级特性，因为它是伟大而有用的语言。

在开始时，您应该尝试解决一些简单的问题。但您不要限制于这样：人们用AutoHotkey编写复杂而巨大的软件。举个例子，建议用来编写AutoHotkey的编译器，[Scite4AutoHotkey](http://www.autohotkey.com/forum/viewtopic.php?t=58820)，其中很大一部分功能都是用AutoHotkey编写的。

您可以用AutoHotkey编写游戏脚本，快速宏，繁重的任务，深度系统修改，通过窗口或其他接口自动化其他应用程序，以及更多。

## 索引
***注：*** 此列表中的条目顺序不是设置固定的。请根据需要改变它。

1. [如何选择AutoHotkey的版本？](What-Version-To-Choose.html)

2. [第一步](First-steps.html)

	- [您的第一个脚本](Your-First-Script.html)

		- [有用的工具: AutoHotkey 编辑器](Useful-Tools-Editors.html)
	- [编译脚本](Compiling.html)

3. [帮助向导](Guide-Manual.html)

4. [AutoHotkey论坛向导](Guide-Forums.html)

5. [现在开始吧](Lets-start.html)
	- [自动执行段](auto-execute-section.html)
	- [热键]()
	
		- [上下文相关的热键]() <!-- including #if & friends, but without covering in detail || or just #IfWinActive + #if later?  
												~nimda says:	#if should go there; with a link to expressions or at least 
																http://d.ahk4.me/Variables#Expressions -->
		- [‘切换’热键和‘自动触发’](toggle-autofire.html) <!-- ~change the punctuation/name; not a big deal -->
	- [热字串]()

		- [重映射]()
	- [使用标签等组件](Labels.html)

		- [有用的工具: TillaGoTo](Useful-Tools-TillaGoTo.html)
	- [变量、命令和函数知识](Variables-functions-commands.html)

		- [强大的内置变量](builtin-variables.html)
	- [使用条件](Working-with-conditions.html)
	- [基本用户交互：使用MsgBox等组件](Basic-user-interaction.html)
	- [重复的任务](Repeating.html)
	- [改变AutoHotkey的方式]() <!-- directives! take from Directives.markdown -->
	- [GUI知识]()

		- [有用的工具：Gui创建工具]()<!-- take from Coding-Environment.markdown -->
	- [文件管理]()
	- [存储数据]()
		- [INI]()
		- [注册表]()
	- [运算符]()

		- [一些数学运算]()
	- [操作字符串]()
	- [错误处理]() <!-- ErrorLevel + try/catch/throw -->
	- [正则表达式]()

6. [给代码添加文档]()
	- [为什么及如何编写文档]()
	- [有用的工具: NDocs & GenDocs]()

7. [用户定义函数]() <!-- including byRef -->
	- [变量作用域]()
	- [库和标准库转换]()
	- [标准库集合]()

8. [深入web：下载，HttpRequests, httpQuery() 更多]()

9. [高级位知识]()
	- [使用DllCalls调用Windows API]()
	- [结构](Structures.html)
	- [操作位、字节等(&, |, >>, <<, ...)]()
	- [Streams and file headers]()

10. [自定义GUI控件]()
	- [嵌入浏览功能到GUI等]()

11. [COM]()
	- [简明介绍]()
	- [StdLib和原生COM]()
	- [自动化IE & FF]()
	- [自动化Office]()
	- [接口]()

12. [OOP]()
	- [对象与数组]()
	- [类]()

13. [库]()
    - [CWindow 库 (+ C# 转换器)]()
    - [Aero 库]()
    - [gdi+]()
