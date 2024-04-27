import 'package:flutter/material.dart';
import 'package:flutter_bloemnews2/models/newsdata.dart';
import 'package:flutter_bloemnews2/widgets/newscard.dart';
import 'package:provider/provider.dart';

class StoriesPage extends StatefulWidget {
  const StoriesPage({super.key});

  @override
  State<StoriesPage> createState() => _StoriesPageState();
}

class _StoriesPageState extends State<StoriesPage> {
  @override
  Widget build(BuildContext context) {
    context.read<NewsData>().fetchData;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Bloemfontein News',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Jacquard24',
            fontSize: 40,
          ),
        ),
      ),
      body: RefreshIndicator(
          child: Center(
            child: Consumer<NewsData>(
              builder: (context, value, child) {
                return value.map.length == 0 && !value.error
                    ? CircularProgressIndicator()
                    : value.error
                        ? Text(
                            'Oops, something went wrong. ${value.errorMessage}',
                            textAlign: TextAlign.center,
                          )
                        : ListView.builder(
                            itemCount: value.map['stories'].length,
                            itemBuilder: (context, index) {
                              return NewsCard(map: value.map['stories'][index]);
                            },
                          );
              },
            ),
          ),
          onRefresh: () async {}),
    );
  }
}
