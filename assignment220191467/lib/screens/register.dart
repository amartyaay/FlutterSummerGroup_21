import 'package:flutter/material.dart';
import 'greetings.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String batch = '2016';
  var items = ['2016', '2017', '2018', '2019', '2020'];
  bool isSwitched = false;
  String option = 'yes';
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Colors.white, primaryColor: Color(0xff2FC4B2)),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'CRuX Flutter Summer Group',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('BITS ID'),
                TextField(
                  controller: myController,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter Your BITS ID',
                    hintStyle: TextStyle(color: Colors.black12),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
                Text('Password'),
                TextField(
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: 'Enter Password',
                    hintStyle: TextStyle(color: Colors.black12),
                    filled: true,
                    fillColor: Colors.black12,
                  ),
                ),
                Text('Batch'),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black12,
                  ),
                  // color: Colors.black12,
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: batch,
                    items: items.map(
                      (String items) {
                        return DropdownMenuItem(
                          child: Text(items),
                          value: items,
                        );
                      },
                    ).toList(),
                    hint: Text('Select Batch'),
                    onChanged: (str) {
                      setState(() {
                        batch = str.toString();
                      });
                    },
                    // value: batch,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Recieve regular updates'),
                    Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                          });
                        }),
                  ],
                ),
                Text('Are you excited for this !!'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ListTile(
                        title: Text('Yes'),
                        leading: Radio(
                          value: 'yes',
                          groupValue: option,
                          onChanged: (value) {
                            setState(() {
                              option = value.toString();
                            });
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text('No'),
                        leading: Radio(
                          value: 'no',
                          groupValue: option,
                          onChanged: (value) {
                            setState(() {
                              option = value.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  child: Container(
                    child: Center(
                      child: Text(
                        'Register',
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff2FC4B2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(10),
                    // width: double.infinity,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Greetings(id: myController.text),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
