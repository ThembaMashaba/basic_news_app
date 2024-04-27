import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.map});
  final Map<String, dynamic> map;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(map['image']),
            Text(
              '${map['imgsource']}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '${map['heading']}',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              '${map['story']}',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '${map['source']}',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' - ',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '${map['date']}',
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
