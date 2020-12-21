---
title: "Essential Refactoring"
date: 2020-12-19T21:00:00+09:00
lastmod: 2020-12-21T15:00:00+09:00
Description: "Essential Refactoring - 3 processes and 2 principles - " 
Tags: ['refactoring']
Categories: ['refactoring']
DisableComments: false
draft: false
---

Have you ever refactored your code, only to find that it's broken and doesn't work anymore?  
Or maybe you know that the code is terrible, but you don’t know how to refactor it, or perhaps you feel that the cost is too high for the benefits of refactoring. Many of these can be easily remedied by reviewing and learning basic refactoring techniques. In this post, I've compiled a list of low learning cost techniques and highly effective for those who are just starting and those just getting started with refactoring. These techniques are like dribbling, passing, and trapping in soccer and are still necessary even if you use more advanced tactics and strategies. When you are learning to refactor, you will use Code Smells and design patterns, but I recommend that you master the content introduced here before moving on to those.  
  
For the sake of beginners, let's take a look at the definition and purpose of refactoring.

> Code refactoring is the process of restructuring existing computer code without changing its external behavior. 
> Refactoring is intended to improve the design, structure, and/or implementation of the software, while preserving its functionality. Potential advantages of refactoring may include improved code readability and reduced complexity; these can improve the source code's maintainability and create a simpler, cleaner, or more expressive internal architecture or object model to improve extensibility.

[code refactoring in wikipedia](https://en.wikipedia.org/wiki/Code_refactoring )

### Contents
#### Basic Three Processes
- [Rename](#rename)
- [Extract](#extract)
- [Inline](#inline)

#### Basic Two Principles
- [Keep Checking](#keep-checking)
- [Use tools as much as possible](#use-tools-as-much-as-possible)

### Basic Three Processes
#### Rename
Good names improve understandability and ease of change. They also eliminate many of the comments in the code and improves the visibility of the code. It is better to have a name that is a bit redundant but has an exact meaning than a short and vague term. Simple words are easier to read, but it is best to avoid polysemous words.  
Nnames should be contextual, such as package name, class name, method name. It makes sense even if you remove unnecessary qualifiers.  
You should check names both from the perspective of describing the internal implementation and calling the API from outside. It is perfect if there is no discomfort or inconsistency.  
In the local scope, short variable names are sometimes acceptable.  
Readable Code documented well about these topics, and I recommend it.

#### Extract
There are several types of Extract: variables, methods, functions, classes. IDE shortcuts may be separate for each.  
For Extract variables, we use a technique called explanatory variables. By creating variables that are not necessary for purely behavioral code, and naming explanatory them, you can easily understand the program's context and the overall picture.  
This technique is beneficial when you try to understand complex code that you see the first time, and you should create branches and refactor as you read. The trick is to be bold and not try to merge, and once you understand it, you can discard the refactored branch.  
Refactoring code in this way often uncovers potential bugs, inconsistencies, and dead code.  
Another essential technique is to use Extract to make certain parts of the code interchangeable and then cut them out. First, you extract the part you want to make interchangeable and then move it to the above of the code to avoid it. Second, you extract the original target part as a function, and you receive the replacement part as an argument. We often use the technique in actual development, so it is advantageous to practice to do it smoothly.

#### Inline
Inline is the process of undoing something extracted.  
It may look easy, but it is crucial.  
Imagine that you are making a shape out of clay. You change the shape little by little, and if it goes too far, you put it back, and so on, until you decide on a size and shape that matches the overall balance.  
At this point, what if you couldn't return the shape to its original form once you moved it, like a sculpture? Wouldn't it be quite a different level of difficulty?  
Inline is an essential process for making software development into clay, and software development without Inline is like sculpting.  
I've heard that written object-oriented code badly is worse than simple procedural programming, but you don't have to worry with Inline. All you have to do is go back, clean it up, and Extract it again.  
There is one caveat to Inline: there is also a compiler feature called Inline, which is the more popular term, and almost all searches for Inline alone will return hits for Inline in the compiler. So be careful not to misunderstand what they are talking about it.  

### Basic Two Principles
#### Keep Checking
Check continuously. Unit tests are just fine.  
Automatic and continuous checking will prevent refactoring from failing. It is enough that automated unit tests when codes change are detected.  
Using a statically typed language that the compiler gives you good messages, constant compilation and occasional testing is also the right balance.  
If you are a novice engineer or a person who has not done TDD, you should try this.  

#### Use tools as much as possible.
When refactoring, use the refactoring feature of the IDE. Humans make mistakes, but machines do not. Errors will occur due to an increase even if the probability of mistakes is small when you change a part referenced a lot or apply many patterns on top of each other. You can reduce the checking effort considerably if you are sure that the behavior will not change after refactoring, but you will have to prepare more extensive tests for it if you are not sure.  
The accumulation of trust is also essential when making organizational decisions. If you refactor a lot and there are few bugs, there will be less resistance to refactoring within that organization.  
It is also helpful to have static analysis tools such as Formatter and Linter automatically applied. Formatter not only improves readability but also reduces the diffs that occur when refactoring. Linter can give you ideas of refactoring for best practices and refactoring to avoid pit holes.  
It is also a good idea to use an automated code review tool like SonarQube, CodeGuru, or CodeScene if possible.


### Finally
Refactoring beginners often trip up the two principles without realizing it.  
And, Inlining is the most underrated of all the things I've mentioned, but it's crucial.  
I hope this article has made your refactoring experience a pleasant one.
