import 'package:flutter/material.dart';

class AppSecurityRelated extends StatelessWidget {
  const AppSecurityRelated({super.key});

  static const List<String> _securityMeasuresList = [
    '• Codebase obfuscation',
    '• Jailbroken devices detection',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App security measures'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Definition',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            _buildDefinitionsWidget(),
            const SizedBox(
              height: 10,
            ),
            _buildImplementationsListWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildImplementationsListWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Below are the implementations I am familiar with:',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
            child: ListView.builder(
          shrinkWrap: true,
          itemCount: _securityMeasuresList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: Text(
                _securityMeasuresList[index],
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          },
        )),
      ],
    );
  }

  Widget _buildDefinitionsWidget() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Designing, coding and configuring the app to prevent data or code from being stolen or misused.',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
