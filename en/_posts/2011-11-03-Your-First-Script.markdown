---
title: Your first script
layout: post
permalink: /en/Your-First-Script.html
---
# Your first script

## Let's start
Now you should have chosen your AutoHotkey version, your editor, and you should have set up both.
We'll do our first script now.

## Create a script file
If you have used the AutoHotkey classic or AutoHotkey\_L installer, right-click on your desktop or any folder and select New > AutoHotkey Script from the context menu. Open the newly created file in your editor. If you haven't run an installer, just open your editor and save it as a file with the extension ".ahk".

In the editor, type the following code:
{% highlight ahk %}
MsgBox Hello, World!
{% endhighlight %}

Save your file now.

---
### Note:
Make sure you chose the correct encoding. If you have installed AutoHotkey classic or AutoHotkey\_L ANSI, use, of course, ANSI, otherwise use UTF-8.

* In Windows Notepad, this setting is available under `File` > `Save As...` > `encoding`.
* In Notepad++, it's in the menu bar under `Encoding`.

---
## Execute your script
If you have run an installer, just double-click the file for executing it. Otherwise use the command line to run `[Path/To/YourAutoHotkey].exe "[Path/to/your/script].ahk"`.

For IronAHK on Linux / Ubuntu / Mac, run `mono IronAHK.exe [Path/to/our/script].ahk`.

You should see a box appear similar to the screenshot below:
![MsgBox screenshot](images/Hello-World-1.png)

## What happened?
The first word in your code above, `MsgBox`, is an AutoHotkey command that instructs AutoHotkey to show that box. The rest of the code is, as you might have guessed, the message to display.

## Extending that example
You can customize the MsgBox further:
![2nd MsgBox screenshot](images/Hello-World-2.png)

Use the following code:

{% highlight ahk %}
MsgBox, 36, a question, Would you like to say 'Hello, World'?
{% endhighlight %}

## Comments
As in all programming and scripting languages, you can add comments to AutoHotkey source code as well:

{% highlight ahk %}
/***********************************
This is my first script!
Impressive, isn't it?
************************************
*/
MsgBox ; this displays a box saying "Click OK to continue"
{% endhighlight %}

So you can see: the character for one-line comments is the semicolon (`;`). This can of course be used in the same line as code, but it must be at the end and there must be at least one space or tab before the semicolon.

For multi-line comments, you use `/*` and `*/`. There can be more text on the same line as the comment start (as in the example), but **the comment-end must be alone in a line!**
