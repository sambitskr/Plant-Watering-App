import 'package:flutter/material.dart';

class PlantsType extends StatelessWidget {
  final String plantImagePath;
  final String plantName;

  const PlantsType(
      {super.key, required this.plantImagePath, required this.plantName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    plantImagePath,
                    fit: BoxFit.cover,
                    height: 349,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  )),
              child: Image.asset(
                'Images/wateringCan.png',
                height: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 60,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    plantName,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
