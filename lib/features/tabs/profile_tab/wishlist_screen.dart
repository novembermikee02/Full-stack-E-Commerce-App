import 'package:ecommerce_frontend_backend/features/tabs/home_tab/category_details.dart';
import 'package:ecommerce_frontend_backend/features/tabs/profile_tab/add_payment.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text(
          'Wishlist',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Wishlist(
              title: 'My Favorite',
              productCount: '12',
              pageRedirection: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const CategoryDetails();
                    },
                  ),
                );
              },
            ),
            Wishlist(
              pageRedirection: () {},
              title: 'T-Shirts',
              productCount: '4',
            ),
          ],
        ),
      ),
    );
  }
}

class Wishlist extends StatelessWidget {
  final String title;
  final String productCount;
  final VoidCallback pageRedirection;

  const Wishlist(
      {super.key,
      required this.title,
      required this.productCount,
      required this.pageRedirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const Icon(Iconsax.heart_copy),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: blackColor,
          ),
        ),
        subtitle: Text(
          '$productCount Products',
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
        trailing: IconButton(
          onPressed: pageRedirection,
          icon: const Icon(Iconsax.arrow_right_3_copy),
        ),
      ),
    );
  }
}
