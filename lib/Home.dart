import 'package:flutter/material.dart';

class _MyHomePageState extends State {
  TextEditingController con1 = TextEditingController();
  TextEditingController con2 = TextEditingController();

  void _sent() {
    setState(() {
      con2.text = con1.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('home'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: con1,
                decoration: InputDecoration(
                  labelText: 'Enter',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: con2,
                decoration: InputDecoration(
                  hintText: '....',
                  //labelText: '....',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5)),
                ),
                readOnly: true,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    ElevatedButton(onPressed: _sent, child: const Text('ENTER')),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
