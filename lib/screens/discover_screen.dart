import 'package:flutter/material.dart';
import 'package:new_store/models/products.dart';
import 'package:new_store/widgets/card_prudect_widget.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final List<Products> products = [
    Products(
      name: 'Fit Polo T Shirt',
      imagePath: 'assets/images/image.png',
      price: 29.99,
      details: 'Soft cotton polo with a modern fit.',
      size: 'M',
    ),
    Products(
      name: 'Slim Fit Jeans',
      imagePath: 'assets/images/image.png',
      price: 49.99,
      details: 'Comfortable slim fit jeans for everyday wear.',
      size: 'L',
    ),
    Products(
      name: 'Casual Sneakers',
      imagePath: 'assets/images/image.png',
      price: 79.99,
      details: 'Lightweight casual sneakers with cushioned soles.',
      size: '42',
    ),
    Products(
      name: 'Leather Jacket',
      imagePath: 'assets/images/image.png',
      price: 149.99,
      details: 'Premium leather jacket with a classic finish.',
      size: 'XL',
    ),
    Products(
      name: 'Classic Watch',
      imagePath: 'assets/images/image.png',
      price: 199.99,
      details: 'Elegant classic watch for everyday style.',
      size: '40mm',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),

              const Text(
                "Discover",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // شريط البحث
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search for clothes...",
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.tune, color: Colors.white),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return CardProductWidget(product: products[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
