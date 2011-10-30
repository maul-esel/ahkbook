---
title: Compiling scripts
layout: default
permalink: /en/Compiling.html
---

# Compiling scripts
All AutoHotkey versions offer you the possibility to "compile" a script, to turn it into a \*.exe file that runs without AutoHotkey.exe.
However, this is not a real compilation: The script code is **not** translated into binary code itself.
Instead, the compiler (Ahk2Exe.exe) just packs the script code together with a special version of AutoHotkey (AutoHotkeySC.bin) into a file. When this is executed, the included parser executes the script.

## Performance
This is important in terms of performance: compiled AutoHotkey code isn't a lot faster that uncompiled. So compiling is useful for scripts you carry with you, on computers without AutoHotkey installed, but not for making your scripts faster.

## Uncompiling
Another important aspect of this "compilation" process is that scripts can easily be decompiled. Compiled AutoHotkey scripts can be decompiled by downloading the "Exe2Ahk" tool from [AutoHotkey's download page](http://www.autohotkey.com/download/OtherDownloads.htm).
Previous AutoHotkey versions (and AutoHotkey classic) include an "no-decompile" switch in the compiler to make decompilation more difficult. This prevents the above tool from decompiling a script. However, this doesn't make your code safe: anyone who spends some time on it will be able to decompile your script. This is why the "no-decompile" option is no longer present in newer AutoHotkey versions.
On the forum, you might find ["HotkeyCamo"](http://www.autohotkey.com/forum/viewtopic.php?t=49952), a closed-source compiler for AutoHotkey that claims to do real compilation. However, this tool seems to not have been updated for a while and doesn't support latest AutoHotkey versions.

## IronAHK
All the above affects AutoHotkey classic, AutoHotkey_L, AutoHotkey v2, AutoHotkey_H etc., ***but not IronAHK.*** IronAHK compiles your scripts into .NET assemblies. This means one usually can't get the AutoHotkey source code out of it. There are tools to get what the assembly does and how, but not the original source code. Also, you can use so-called "obfuscators" to avoid this.
The second aspect of this fact is that in IronAHK, compiling improves performance: the AutoHotkey code is not interpreted by the parser anymore, and it should be as fast as any other .NET assembly.

## AutoHotkey_L's scripted compiler
Since the latest AutoHotkey_L versions, the compiler shipped with the installer is written in AutoHotkey. You can find the source [here](http://www.autohotkey.com/forum/viewtopic.php?t=74816).

## Compile_AHK
Another great tool is [Compile_AHK II](http://www.autohotkey.com/forum/viewtopic.php?t=22975), a tool to make compilation easier, allowing you to include resources in your script, setting it's icons and execution privileges.