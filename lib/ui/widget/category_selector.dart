import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int _selectedPosition = 0;
  List<String> _categoryList = ['Message', 'Online', 'Groups', 'Requests'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Text(
                  _categoryList[index],
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: _selectedPosition == index
                          ? Colors.white
                          : Colors.white60),
                ),
              ),
              onTap: () {
                setState(() {
                  _selectedPosition = index;
                });
              },
            );
          }),
    );
  }
}
