import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Gallery',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ImageGallery(),
    );
  }
}

class ImageGallery extends StatelessWidget {
  final List<String> images = [
    'assets/images/imagem1.jpg',
    'assets/images/imagem2.jpg',
    'assets/images/imagem3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Título da minha página')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Text(
                'Hello Flutter',
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
            ),
            Text('Hello Flutter'),
            TextField(decoration: InputDecoration(labelText: 'Username')),
            Column(children: [Text('item 1'), Text('item 2'), Text('item 3')]),
            Row(children: [Text('item 1'), Text('item 2'), Text('item 3')]),
            ElevatedButton(
              onPressed: () {
                print('Button pressed');
              },
              child: Text('Mari te amo <3'),
            ),
            Icon(
              Icons.check_circle_outline_outlined,
              color: Colors.black,
              size: 130,
            ),
            Card(
              child: ListTile(
                title: Text('Título'),
                subtitle: Text('Subtítulo'),
                leading: Icon(Icons.info),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem(child: Text('Item 1'), value: 'item1'),
                DropdownMenuItem(child: Text('Item 2'), value: 'item2'),
                DropdownMenuItem(child: Text('Item 3'), value: 'item3'),
              ],
              onChanged: (value) {
                print('Selected: $value');
              },
              value: 'item1',
            ),
            SwitchListTile(
              title: Text('Switch'),
              value: false,
              onChanged: (value) {
                print('Switch changed: $value');
              },
            ),
            Checkbox(
              value: true,
              onChanged: (value) {
                print('Checkbox changed: $value');
              },
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.red,
                    child: Text(
                      'Hello Flutter',
                      style: TextStyle(fontSize: 26, color: Colors.yellow),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    color: Colors.green,
                    child: Text(
                      'Hello Flutter',
                      style: TextStyle(fontSize: 26, color: Colors.yellow),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 30,
                    color: Colors.red,
                    child: Text(
                      'Hello Flutter',
                      style: TextStyle(fontSize: 26, color: Colors.yellow),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 30,
                    color: Colors.green,
                    child: Text(
                      'Hello Flutter',
                      style: TextStyle(fontSize: 26, color: Colors.yellow),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Image.asset(images[index], fit: BoxFit.cover),
                );
              },
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                for (var image in images)
                  ListTile(title: Text('image path: $image')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
