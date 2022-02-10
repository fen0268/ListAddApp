import 'package:flutter/material.dart';
import 'package:lise_add_app/list_page.dart';


void main() => runApp(
  const MaterialApp(
    home: MyApp(),
  ),
);

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyApp> {
  String paramText = '';

  void _userNameChanged(String value) {
    setState(() {
      paramText = value;
    });
  }

  void _userNameSubmitted(String value) {
    setState(() {
      paramText = 'Submitted $value';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
              children: [

                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 300,
                  height: 40,
                  child: TextField(
                    decoration: const InputDecoration(
                        hintText: 'Username',
                        icon: Icon(Icons.account_circle),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.red,
                            ))),
                    autocorrect: false,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    onChanged: _userNameChanged,
                    onSubmitted: _userNameSubmitted,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListPage(
                            paramText: paramText,
                          )),
                    );
                  },
                  child: const Text(
                    '次へ',
                    style: TextStyle(fontSize: 25),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}