import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key, required this.paramText}) : super(key: key);

  final String paramText;
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> titleList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView.builder(
        itemCount: titleList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  title: Text(titleList[index])
                ),
                const Divider(),
              ],
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add(widget.paramText);
          setState(() {
          });
        },
      ),
    );
  }
}
