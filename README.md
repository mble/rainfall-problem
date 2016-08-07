# Rainfall

This is a problem that had me stumped during a session, and at one point 
[seems to have been used at 
Twitter](https://medium.com/@bearsandsharks/i-failed-a-twitter-interview-52062fbb534b).

## Problem Statement

Consider the following picture:

```
10│
09│
08│            ___
07│           │7 7│___
06│  _        │    6 6│
05│ │5│      _│       │
04│ │ │    _│4        │
03│_│ │  _│3          │
02│2  │_│2            │
01│____1______________│
   0 1 2 3 4 5 6 7 8 9
```

This represents the topography of a 2D flatland, with peaks and valleys.
The heights of the peaks are given on the columns.

This can be represented as a 1-dimensionsal array: 
`[2,5,1,2,3,4,7,7,6,6]`

The industrious farmers of this flatland are deeply concerned about
localised flooding, and would like projections of the volume of water
that could accumulate in the valleys, should it rain.

In the example above, this could be represented as follows with the `#` 
character:

```
10│
09│
08│            ___
07│           │7 7│___
06│  _        │    6 6│
05│ │5│#######│       │
04│ │ │#####│4        │
03│_│ │###│3          │
02│2  │#│2            │
01│____1______________│
   0 1 2 3 4 5 6 7 8 9
```

Each square can be given a volume of 1X1, and the water spills out to the left of index 0, and to the right of index 
7, leaving a puddle between indexes 1 and 6 of volume 10.

Write a program that takes in a local topography as an array of 
integers, and returns the total volume of all puddles that could be 
created were rain to fall.

## Solution

My original approach as discussed in the session was to calculate the 
volume of each puddle seperately, requiring a minimum of two passes 
through the array.

However, after some thinking and reading, I believe the solution inside 
the repo is better.
