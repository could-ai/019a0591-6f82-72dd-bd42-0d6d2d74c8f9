import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Isomerisme Kimia",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blueGrey),
          bodyLarge: TextStyle(fontSize: 16, height: 1.5),
          titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pengantar Isomerisme"),
        backgroundColor: Colors.blue.shade700,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Card(
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Definisi Isomerisme",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Isomerisme terjadi apabila suatu molekul memiliki rumus molekul yang sama, tetapi orientasi atom dalam tiga dimensi berbeda. Senyawa-senyawa yang berisomer disebut isomer.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildIsomerCategory(
            context,
            title: "1. Isomer Struktural",
            description: "Isomer ini terjadi ketika atom-atom dalam molekul terhubung dengan cara yang berbeda. Ikatan antar atomnya berbeda.",
            subtypes: [
              "Isomer Rangka: Rantai karbon utama berbeda (bercabang atau lurus).",
              "Isomer Posisi: Posisi gugus fungsi atau ikatan rangkap berbeda.",
              "Isomer Gugus Fungsi: Gugus fungsi yang dimiliki berbeda.",
            ],
          ),
          const SizedBox(height: 20),
          _buildIsomerCategory(
            context,
            title: "2. Isomer Ruang (Stereoisomer)",
            description: "Isomer ini memiliki konektivitas atom yang sama, tetapi berbeda dalam penataan atom-atom tersebut di dalam ruang tiga dimensi.",
            subtypes: [
              "Isomer Geometris (Cis-Trans): Terjadi karena keterbatasan rotasi pada ikatan (misalnya, ikatan rangkap dua).",
              "Isomer Optis (Enansiomer): Molekul merupakan bayangan cermin satu sama lain yang tidak dapat ditumpangkan.",
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIsomerCategory(BuildContext context, {required String title, required String description, required List<String> subtypes}) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              textAlign: TextAlign.justify,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            ...subtypes.map((subtype) => Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 4.0),
              child: Text(
                "• $subtype",
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16),
              ),
            )).toList(),
          ],
        ),
      ),
    );
  }
}
