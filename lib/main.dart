import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Percobaan Pertama',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red, // Background merah untuk AppBar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.settings), // Icon pengaturan
                SizedBox(width: 8),
                Container(
                  color: Colors.red, // Warna latar belakang merah
                  padding: EdgeInsets.all(4.0), // Padding untuk teks
                  child: Text('Percobaan Pertama'),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.exit_to_app), // Icon logout
                SizedBox(width: 8),
                Icon(Icons.person), // Icon orang
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              // Aksi saat tombol refresh ditekan
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.green,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 20,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Judul'),
                        Row(
                          children: [
                            Text('asik', style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 8),
                            Icon(
                              Icons.favorite,
                              color: Colors.grey[700], // Warna ikon love diubah menjadi hitam muda
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[700], // Warna hitam muda
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.grey,
                          size: 16, // Ukuran ikon garis
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 20,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Judul'),
                        Row(
                          children: [
                            Text('asik', style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 8),
                            Icon(
                              Icons.favorite,
                              color: Colors.grey[700], // Warna ikon love diubah menjadi hitam muda
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[700], // Warna hitam muda
                      ),
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: Colors.grey,
                          size: 16, // Ukuran ikon garis
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
        ],
      ),
    );
  }
}
