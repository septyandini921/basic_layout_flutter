// lib/pages/home_page.dart

import 'package:flutter/material.dart';
import 'package:layout_flutter/models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Sugar',
        price: 5000,
        stock: 15,
        rating: 4.5,
        imagePath: 'images/sugar.jpeg',
      ),
      Item(
        name: 'Salt',
        price: 2000,
        stock: 22,
        rating: 4.8,
        imagePath: 'images/salt.jpeg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          childAspectRatio: 0.8, 
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: const EdgeInsets.all(10),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Card(
              clipBehavior: Clip.antiAlias, 
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // gambar produk
                  Expanded(
                    child: Hero(
                      tag: item.imagePath,
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                      ),     
                    ),
                  ),
                  // detail produk
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Rp ${item.price}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.orange.shade800,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // rating
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.amber, size: 16),
                                const SizedBox(width: 4),
                                Text(
                                  item.rating.toString(),
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                            // stok
                            Text(
                              'Stok: ${item.stock}',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}