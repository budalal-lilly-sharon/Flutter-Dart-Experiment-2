
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Layouts',
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple,
        useMaterial3: true,
      ),
      home: const LayoutDemo(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widgets & Layouts'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            '1. Text & Container Demo',
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.deepPurple, Colors.purpleAccent],
              ),
              border: Border.all(color: Colors.deepPurple, width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'Hello, Flutter!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Text(
            '2. Image Demo',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.purple.shade50,
              border: Border.all(color: Colors.deepPurple),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.network(
              'https://picsum.photos/400/200',
              height: 160,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 160,
                  child: Center(child: Text('Image unavailable')),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            '3. Row Demo',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.star, size: 40, color: Colors.amber),
              Icon(Icons.favorite, size: 40, color: Colors.red),
              Icon(Icons.thumb_up, size: 40, color: Colors.blue),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            '4. Column Demo',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              const Text(
                'Beautiful Nature',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Image.network(
                'https://picsum.photos/350/160',
                height: 130,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    height: 130,
                    child: Center(child: Text('Image unavailable')),
                  );
                },
              ),
              const SizedBox(height: 8),
              const Text(
                'Nature gives us peace and happiness.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            '5. Stack Demo',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.network(
                'https://picsum.photos/400/200',
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 180,
                    color: Colors.deepPurple.shade100,
                    alignment: Alignment.center,
                    child: const Text('Nature Background'),
                  );
                },
              ),
              Container(
                padding: const EdgeInsets.all(12),
                color: Colors.black54,
                child: const Text(
                  'Explore the beauty of nature!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'End of Experiment 2',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
