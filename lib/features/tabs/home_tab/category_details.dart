import 'package:ecommerce_frontend_backend/features/tabs/home_tab/home_screen.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text(
          'Hoodies (240)',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, right: 5, bottom: 20, left: 20),
        child: ProductList(
          products: [
            Product(
                imagePath: 'assets/images/products/product_1.png',
                title: 'Product 1',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_3.png',
                title: 'Product 2',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_2.png',
                title: 'Product 3',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_1.png',
                title: 'Product 1',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_3.png',
                title: 'Product 2',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_2.png',
                title: 'Product 3',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_1.png',
                title: 'Product 1',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_3.png',
                title: 'Product 2',
                price: '\$29.99',
                crossPrice: '\$39.99'),
            Product(
                imagePath: 'assets/images/products/product_2.png',
                title: 'Product 3',
                price: '\$29.99',
                crossPrice: '\$39.99'),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final product = products[index];
        return ProductCard(
            imagePath: product.imagePath,
            title: product.title,
            price: product.price,
            crossPrice: product.crossPrice);
      },
    );
  }
}
