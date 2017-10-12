# Mars Rover

This programming problem is written in Ruby

## The problem

A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.

A rover’s position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.

In order to control a rover, NASA sends a simple string of letters. The possible letters are ‘L’, ‘R’ and ‘M’. ‘L’ and ‘R’ makes the rover spin 90 degrees left or right respectively, without moving from its current spot. ‘M’ means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

### Input
First line of input: upper-right coordinates of the plateau, lower-left coordinates assume to be 0,0

Rest of the input is are the deployed rover's information - each rover has two lines of input
1. Rover's position - made up of two integers and a letter i.e. 0 0 N
2. Series of instructions telling the rover how to explore the plateau

Each rover will be finished sequentially - second rover won't start until the first one has finished moving

### Output:
The output for each rover should be its final co-ordinates and heading i.e. 1 3 E

# Assumptions
- Low left coordinates of the plateau are at 0,0

## Input + Output
Test input
```
5 5

1 2 N

LMLMLMLMM

3 3 E

MMRMMRMRRM
```
Expect output
```
1 3 N

5 1 E
```

## Requirements

- The problem requires an input of some kind
- Provide sufficient evidence that solution is complete by, as a minimum,
indicating that it would work correctly against the supplied test data
- Application must run

## Rules
- No external libraries, only for building or testing purposes
- Submit code as a zip file

## How to run application

**Clone this repository**
```
$ git clone
```
**Install dependencies**
```
$ bundle install
```

**To run**
```
$ ruby controller.rb
```
Import test file

## Approach
**Design**
- User Stories
- Translating user stories into models and diagramming to visualise how each model interacted with each other
- Domain modelling to represent state and behaviour


Object orientated programming
Sandi Metz (POODR)

DRY
Small classes
Loosely coupled models - encapsulation, be mindful about exposing internal state
Encapsulation of state

SOLID principles
- Law of Demeter
- Dependency Injection

Agile - iterative processes

**Test Driven Development**

**Refactoring**

Production quality code that can be run, maintained and evolved.

## Future improvements

-

## User Stories

Writing simple user stories helped me to break down the problem a little further - explicitly defining the requirements and giving me an idea of the models I would need to consider building.

### Plateau
```
As a plateau on Mars
So that a squad of rovers can land
The plateau should be rectangular in shape
```
```
As a plateau on Mars
So that deployed rover positions can be determined
The plateau should be divided up into a grid
```
```
As a plateau on Mars
So that grid coordinates can be determined
The square directly North from (x,y) is (x, y+1)
```
```
As a plateau
So that it has an overall size
The plateau should have a width (x axis) and height (y axis)
```
```
As a plateau on Mars
So that the size of the grid can be determined
The first line of input represents the upper-right coordinates. (lower-left coordinates are 0,0)
```
### Rover
```
As a rover
So that its location is defined
It should have a position and direction
```
```
As a rover
So that its position can be represented
There should be x and y start coordinates
```
```
As a rover
So that its direction can be represented
There should be an initial direction of a carinal compass point i.e. N, E, S, W
```
```
As a rover
So that it can be controlled by NASA
It should take an input string of letters: 'L', 'R', 'M'
```
```
As a rover
So that it spins the correct direction
It should spin 90 degrees left or right without moving from its current position
```
### Edge cases
```
As a rover
So that it is able to move
The current position of the rover should not exceed the plateau's length and width
```
```
As a rover
So that it does not move off the plateau
The end point of the rover should not negative
```
```
As a rover
So that there are not duplicate positions
An error should be raised if the current positions of the rover is the same
```
