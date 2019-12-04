---
title: Getting list of printers under Windows 2003 Server
date: 2013-08-05
---

This article is just a quick reminder to myself. Sometimes it is hard to
find the information on how to do something so important like getting a list of printers in the command line.

Recently I faced the task that required me to export a list of printers from Windows 2003 Server. Of course, it would be an easier task in case of Windows 2008 Server but the older version has its tools too.

The command that shows the list of printers is

```Shell Session
prnmgr -l
```

You can redirect it into a CSV file for your convenience.

```Shell Session
prnmgr -l > printers.csv
```

Also, the system might ask you to do this prior to running prnmgr.

```Shell Session
CScript //H:Cscript //S
```

Good luck!
