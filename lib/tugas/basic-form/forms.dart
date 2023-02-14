import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyFormsWidget extends StatefulWidget {
  const MyFormsWidget({Key? key}) : super(key: key);

  @override
  State<MyFormsWidget> createState() => _MyFormsWidgetState();
}

class _MyFormsWidgetState extends State<MyFormsWidget> {
  TextEditingController textController =
      TextEditingController(text: 'Me and my');
  final _formKey = GlobalKey<FormState>();
  String? form1Value;
  String? form2Value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Form'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Textfiled form without validation
                TextField(
                  maxLength: 25,
                  // controller: textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    hintText: 'Silahkan input nama kamu',
                    helperText: 'Inputkan nama kamu',
                  ),
                  onChanged: (value) {
                    setState(() {
                      form1Value = value;
                    });
                  },
                ),
                TextFormField(
                  maxLength: 25,
                  // controller: textController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.blueGrey,
                    ),
                    // enabledBorder: UnderlineInputBorder(
                    //   borderSide: BorderSide(
                    //     color: Colors.blueGrey,
                    //   ),
                    // ),
                    hintText: 'Silahkan input nama kamu',
                    helperText: 'Inputkan nama kamu',
                  ),
                  // validator: (value) =>
                  //     value == null ? null : 'Please input nama kamu!',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      form2Value = value;
                    });
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Pesanan $form1Value punya $form2Value dalam proses'),
                          ),
                        );
                      }
                    },
                    child: const Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
