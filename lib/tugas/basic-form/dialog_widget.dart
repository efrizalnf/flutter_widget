import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:project_flutter_pertama/tugas/basic-form/helper.dart';

class MyDialogWidget extends StatefulWidget {
  const MyDialogWidget({super.key});

  @override
  State<MyDialogWidget> createState() => _MyDialogWidgetState();
}

class _MyDialogWidgetState extends State<MyDialogWidget> {
  // var preferredSize = const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(titleValue: 'latihan dialog'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await showDialog<void>(
                    context: context,
                    barrierDismissible:
                        true, // 'true' untuk dapat keluar dari dialog tap dimana saja
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Info'),
                        content: SingleChildScrollView(
                            child: ListBody(
                          children: const [
                            Text('Ini adalah info'),
                          ],
                        )),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Ok'),
                          )
                        ],
                      );
                    });
              },
              child: const Text('Open dialog'),
            ),
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
                onPressed: () async {
                  await showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text('Hallo'),
                                const SizedBox(height: 20.0),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Ok'),
                                      ),
                                    ])
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: const Text('Open Bottom Sheet')),
            const SizedBox(
              height: 18,
            ),
            ElevatedButton(
                onPressed: () async {
                  bool isConfirm = false;
                  await showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: const EdgeInsets.all(20.0),
                          child: Wrap(children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('komfirmasi'),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                      'Apakah kamu yakin akan menghapus data?'),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Tidak'),
                                      ),
                                      const SizedBox(width: 10.0),
                                      ElevatedButton(
                                        onPressed: () {
                                          isConfirm = true;
                                          Navigator.pop(context);
                                        },
                                        child: const Text('Ya'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ]),
                        );
                      });
                  if (isConfirm) {
                    print('Confirmed');
                  }
                },
                child: const Text('Open Bottomsheet Confirmation')),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor: Colors.cyan,
                      content: Text('Berhasil ditambahkan'),
                    ),
                  );
                },
                child: const Text('Open SnackBar'))
          ],
        ),
      ),
    );
  }
}
