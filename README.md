# Puzzle Game

This project is created for [#FlutterPuzzleHack](https://flutterhack.devpost.com/)

# **About game**

The game contains three different puzzle.

- Puzzle Type: Number
- Puzzle Type: Word
- Puzzle Type: Math

## **Puzzle Type: Number**

In this type, classically, the numbers should be arranged from 1 to 16.

## **Puzzle Type: Word**

In this type of puzzle, there is a meaningful word consisting of four letters on each line.

You should try to find these words by dragging the boxes.

## **Puzzle Type: Math**

In this puzzle type, each line have a mathematical operation and the result of this operation at the end of the line.

You should try to reach the result by sliding the boxes.

An example column: +3 +1 +2 = 6

## **The meanings of box colors**

> The red box means the position of the box in the puzzle is incorrect.

> The green box means the position of the box in the puzzle is correct.

> You may see the orange boxes if the game type is "Math" or "Word". This means that the value in the position is correct but there is more than one of the same value in the puzzle. If the box is orange, the box position is considered conditionally correct and you can continue playing. However, this can make solving the puzzle difficult. Therefore, it is recommended to proceed by seeing that the boxes are green.

> An opaque boxes means that horizontal and vertical neighbors can be dragged here.

## **About "keep" button**

If keep button is active, when you changed the puzzle type, your moves are keep and you can continue playing where you left off.

If it is not active, when you changed the puzzle type, the game starts from the beginning with the new type of puzzle.

[Working Demo](https://blokberg.github.io/puzzlehack)

[Trailer (youtube)](https://www.youtube.com/watch?v=3E_exSnBWCQ)