import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sepatu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: ListView(
        children: [
          ShoesItem(
            imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e8e3b479-7c84-4d35-bc3e-90b706bacc39/air-force-1-07-next-nature-se-shoes-tpPRVT.png',
            name: 'Nike SB Zoom Blazer',
            type: 'Mid Premium',
            price: '28,795',
          ),
          ShoesItem(
            imageUrl: 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/21783065-1c8a-4d66-8a97-117cf320e284/force-1-mid-se-easyon-shoes-B7l1nX.png',
            name: 'Nike Air ZoomX Vaporfly',
            type: "Men's Rood Running Shoes",
            price: '29,995',
          ),
          ShoesItem(
            imageUrl: 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0083d873-114c-4a76-9dd3-82aa3c1b168f/air-max-dn-shoes-FtLNfm.png',  
            name: 'Nike Air Force 1 S50',
            type: "Men's Rood Running Shoes",
            price: '219,695',
          ),
          ShoesItem(
            imageUrl: 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/d90e3112-ea64-4068-be0d-1e832af89fe8/air-max-dn-shoes-FtLNfm.png',
            name: 'Nike Air Zoom Pegasus',
            type: "Older Kids' Shoe",
            price: '26,295',
          ),
          ShoesItem(
            imageUrl: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e8e3b479-7c84-4d35-bc3e-90b706bacc39/air-force-1-07-next-nature-se-shoes-tpPRVT.png',
            name: 'Nike Walfle One',
            type: "Men's Shoes",
            price: '28,295',
          ),
        ],
      ),
    );
  }
}

class ShoesItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String type;
  final String price;

  ShoesItem({required this.imageUrl, required this.name, required this.type, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(name),
        subtitle: Text('$type - $price'),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            // Tambahkan aksi untuk menambahkan item ke keranjang belanja
          },
        ),
      ),
    );
  }
}
