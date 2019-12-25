---
title: 'Java C: drive and current directory'
date: 2014-10-23
---

Hello again.

Today i want to share small feature that cost me some time while learning Java.

If you want to use directory and access it using this:

```java
File directory = new File("c:");
System.out.println(directory.getAbsolutePath());
```

Then it will give you your current working directory in 'C:' drive. If you would like to get the root of the 'C:' drive call it this way:

```java
File directory = new File("c:\\");
System.out.println(directory.getAbsolutePath());
```

Keep this in mind as it could cause some troubles when you reading directory from user input. Depending on what user type 'C:' or 'C:\' you will get different results.
