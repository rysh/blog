---
title: "Essential Refactoring"
date: 2020-12-19T21:00:00+09:00
lastmod: 2020-12-19T21:00:00+09:00
Description: "Essential Refactoring - 3 processes and 2 principles - " 
Tags: ['refactoring']
Categories: ['refactoring']
DisableComments: false
draft: false
---

Have you ever done refactoring, but the code is broken and doesn't work properly anymore?
Or maybe you know that the code is terrible, but you don’t know how to refactor it, or perhaps you feel that the cost is too high for the benefits of refactoring. Many of these are caused by inexperience with the basics of refactoring. Code smells and design patterns are useful refactoring techniques, but first, you should cover some fundamental processes and principles. In this post, I wrote the basics that you will need before moving on to advanced steps. It is like, in soccer, dribbling, passing, and trapping.

For the sake of beginners, let's take a look at the definition and purpose of refactoring.

> Code refactoring is the process of restructuring existing computer code without changing its external behavior. 
> Refactoring is intended to improve the design, structure, and/or implementation of the software, while preserving its functionality. Potential advantages of refactoring may include improved code readability and reduced complexity; these can improve the source code's maintainability and create a simpler, cleaner, or more expressive internal architecture or object model to improve extensibility.

[code refactoring in wikipedia](https://en.wikipedia.org/wiki/Code_refactoring )

The following are the first three essential processes and two constructive principles that refactoring beginners should learn.

#### Three processes
- [Rename](#rename)
- [Extract](#extract)
- [Inline](#inline)

#### Two principles
- [Keep Checking](#keep-checking)
- [Use tools as much as possible](#use-tools-as-much-as-possible)

### Rename
Good names improve understandability and ease of change. They also eliminate much of the need for comments in codes. You should not use simple polysemous words. Names should be consistent with the context, such as package, class, and method names. Check from both the perspectives of describing the internal implementation and calling the API from the outside. In the local scope, short variables names are not a problem.

### Extract
There are several types of extract: Extract Variable, Method, Function, and Class.
You can use the Extract variables as explanatory variables.
It is a beneficial technique to extract them for complicated code, and you read and understand them while giving them descriptive names. You may often find potential bugs, inconsistencies, and dead code by sorting through the code in this way.
If you want to make a part of the function interchangeable, you first extract and keep out that piece of code and then extract the targeted region to a new function. It is a crucial and heavily used technique.

### Inline
Inline is the process of making extracted variables and methods back together.
This article is what I want to emphasize the most in this article. 
Design is a process of improving by repeated abstraction and concretization. It enables trying to change and reverse.
I've heard that faulty OOP is worse than simple procedural programming, but it's not a big deal if you can inline it. It's just a matter of going back and reorganizing and re-abstracting.
Inline is also a compiler feature, but you should distinguish each other.

### Keep Checking
Check continuously. Unit tests are just fine. If you use statically typed languages where the compiler can give you good advice, you can use constant compilation and periodic testing.
I've seen many cases refactoring breaks code because those who do not check properly.

### Use tools as much as possible.
When refactoring, you must use the IDE's refactoring function. People make mistakes, but machines do not. The small probability of errors is getting more and more serious when you have to fix many references at once or when you have to apply many patterns. If you are sure that refactoring will not change the behavior, you can considerably reduce the checking effort.
Also, for further improvement, you can use static analysis tools such as Formatter or Linter. Formatter not only improves readability but also reduces many code diffs during refactoring. Linter can give you ideas of refactoring for best practices and refactoring to avoid pit holes. You should also use automated code review tools like CodeGuru or Codescene if you can.

### Afterword
Refactoring beginners often trip up the two principles without realizing it.
And, Inline is the most underrated of all the things I've mentioned, but it's crucial. 
I hope this article has made your refactoring experience a pleasant one.
