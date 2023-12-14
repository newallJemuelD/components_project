import 'package:flutter/material.dart';

class SingleSelectRadio extends StatefulWidget {
  const SingleSelectRadio({super.key});

  @override
  State<SingleSelectRadio> createState() => _SingleSelectRadioState();
}

class _SingleSelectRadioState extends State<SingleSelectRadio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single select radio buttons'),
      ),
      body: const RadioListView(),
    );
  }
}

class RadioListView extends StatefulWidget {
  const RadioListView({super.key});

  @override
  State<RadioListView> createState() => _RadioListViewState();
}

class _RadioListViewState extends State<RadioListView> {
  int _selectedRadio = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return RadioListTile(
          title: Text('Radio $index'),
          value: index,
          groupValue: _selectedRadio,
          onChanged: (int? value) {
            setState(() {
              _selectedRadio = value!;
            });
          },
        );
      },
    );
  }
}
