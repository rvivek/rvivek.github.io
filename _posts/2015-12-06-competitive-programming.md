---
layout: post
title: Competitive programming & business 
---

#{{ page.title }}

06 Dec 2015

Programming contests usually follow a format where you are given a set of interesting problems and a fixed time to solve. I used to participate a lot in programming contests & here’s how it has helped me run HackerRank

1. Sub problems
The overall problem statement is usually daunting but the first thing you do is to split into smaller problems. Once you identify the right sub-problems, try to solve each of them and then merge. It’s very similar to any problem you encounter in a startup. The actual problem (how are we going to grow the MAU or hit our quarterly revenue numbers, etc.) looks scary but split them into sub-problems & identify how to solve each of them. 

2. Patterns 
As you continue to solve more challenges, you notice a pattern on how to solve a certain type of problem. This helps you to solve things faster. Similarly as you build the company, you can see patterns, both good & bad happening in the company which you can detect early and act fast. For eg: when I am trying to hire someone, it’s now easy for me to figure out if they are going to join us or not and act accordingly. 

3. Brute force 
Once you identify the sub-problems & know how to merge, the first thing you do is to code a brute-force solution. You need to see if your idea even works for the smaller constraint. Once it succeeds, you start to optimize for larger constraints. In a startup, fix the problem right now before it bloats up and work in parallel to solve it in the longer term.

4. Edge cases 
Before you submit a solution, you look for all edge cases. What are the possible ways this solution can break? Can it fail in a special corner test case or a larger one?I can never forget this code snippet
`vector<int> V;
for (int i = 0;i < V.size()-1;i++){
	// do something
}`

A small bug in the code above cost me $1000, which was a big deal in college. V.size() returns an unsigned integer and when the vector is empty, V.size()-1 results in 2^32-1 causing the for loop to time out. In a startup, when you are working on a business plan or a GTM strategy, you tend to figure out all reasons why something can fail. You constantly search for those “edge” case scenarios so that you don’t miss any blind spot.

5. Speed
Speed is the essence in competitive programming. If you are slow, you are out of the race. Sounds familiar in startup world?

6. Competitive 
And of course, you are very competitive. Not only do you work hard to get better but you also try to find flaws in the other players’ code to move up the leaderboard. While this may sound “ruthless”, it’s essential in the world of business where the winner is 100x bigger than the next player in the category. 

There’s a sentiment that competitive programming is just for junior programmers or those who are in college. Competitive programming sharpens your business acumen which is an invaluable trait if you are a hacker, sometimes more valuable than another hacker with a better technical skill. Competitive programming is more than just solving quick challenges. It rewires your brain to a powerful businessman. 
 

