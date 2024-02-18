import 'package:flutter/material.dart';

class HourlyForcastCard extends StatelessWidget {
  String title = '';
  String value = '';
  HourlyForcastCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: 100,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 6,
          child: Container(
            width: 120,
            child:Column(
              children: [
                Text(
                  '${title} °C',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Icon(
                  Icons.wb_sunny,
                  size: 32,
                  color: Colors.orange,
                ),
                SizedBox(height: 8),
                Text(
                   value,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
