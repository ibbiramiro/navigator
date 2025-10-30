import 'package:flutter/material.dart';

class SecondScreenData extends StatelessWidget {
  const SecondScreenData({super.key});

  @override
  Widget build(BuildContext context) {
    // Read arguments passed via Navigator.pushNamed
    final args = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    final nama = args?['nama'] as String? ?? 'Unknown';
    final email = args?['email'] as String? ?? 'Unknown';
    final nim = args?['nim'] as String? ?? 'Unknown';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nama: $nama',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'Email: $email',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(
              'NIM: $nim',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Back to First Screen',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}