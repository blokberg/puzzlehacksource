import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height - 100,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'The meanings of box colors',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(border: Border.all(color: Colors.red), borderRadius: BorderRadius.circular(6.0)),
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Text(
                      'The red box means the position of the box in the puzzle is incorrect.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(border: Border.all(color: Colors.green), borderRadius: BorderRadius.circular(6.0)),
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Text(
                      'The green box means the position of the box in the puzzle is correct.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(border: Border.all(color: Colors.orange), borderRadius: BorderRadius.circular(6.0)),
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Text(
                      'You may see the orange boxes if the game type is "Math" or "Word".\nThis means that the value in the position is correct but there is more than one of the same value in the puzzle.\nIf the box is orange, the box position is considered conditionally correct and you can continue playing.\nHowever, this can make solving the puzzle difficult.\nTherefore, it is recommended to proceed by seeing that the boxes are green.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(border: Border.all(color: Colors.red.withOpacity(.3)), borderRadius: BorderRadius.circular(6.0)),
                      ),
                      const SizedBox(width: 4.0),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(border: Border.all(color: Colors.green.withOpacity(.3)), borderRadius: BorderRadius.circular(6.0)),
                      ),
                      const SizedBox(width: 4.0),
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(border: Border.all(color: Colors.orange.withOpacity(.3)), borderRadius: BorderRadius.circular(6.0)),
                      ),
                    ],
                  ),
                  const SizedBox(width: 8.0),
                  const Expanded(
                    child: Text(
                      'An opaque boxes means that horizontal and vertical neighbors can be dragged here.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              const Text(
                'About "keep" button',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'If keep button is active, when you changed the puzzle type, your moves are keep and you can continue playing where you left off.',
              ),
              const SizedBox(height: 6.0),
              const Text(
                'If it is not active, when you changed the puzzle type, the game starts from the beginning with the new type of puzzle.',
              ),
              const SizedBox(height: 12.0),
              const Text(
                'About puzzle types',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Puzzle Type: Number',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'In this puzzle type, classically, the numbers should be arranged from 1 to 16.',
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Puzzle Type: Math',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'In this puzzle type, each line have a mathematical operation and the result of this operation at the end of the line.\nYou should try to reach the result by sliding the boxes.\nAn example column: +3 +1 +2 = 6',
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Puzzle Type: Word',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'In this type of puzzle, there is a meaningful word consisting of four letters on each line.\nYou should try to find these words by dragging the boxes.',
              ),
              const SizedBox(height: 12.0),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                ),
                icon: const Icon(Icons.close, size: 18.0),
                label: const Text('close'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
