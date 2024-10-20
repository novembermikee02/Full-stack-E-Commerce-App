import 'package:ecommerce_frontend_backend/features/tabs/home_tab/category_details.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllCategoryList extends StatelessWidget {
  const AllCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text(
          'Shop by Categories',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CategoryItemList(
              imagePath: 'assets/images/categories/cate_1.png',
              label: 'Hoodies',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const CategoryDetails(),
                  ),
                );
              },
            ),
            CategoryItemList(
              imagePath: 'assets/images/categories/cate_2.png',
              label: 'Accessories',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const CategoryDetails(),
                  ),
                );
              },
            ),
            CategoryItemList(
              imagePath: 'assets/images/categories/cate_3.png',
              label: 'Shorts',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const CategoryDetails(),
                  ),
                );
              },
            ),
            CategoryItemList(
              imagePath: 'assets/images/categories/cate_4.png',
              label: 'Shoes',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const CategoryDetails(),
                  ),
                );
              },
            ),
            CategoryItemList(
              imagePath: 'assets/images/categories/cate_5.png',
              label: 'Bags',
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const CategoryDetails(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItemList extends StatelessWidget {
  final String imagePath;
  final String label;
  final VoidCallback? onTap;
  const CategoryItemList(
      {super.key, required this.imagePath, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: textFieldColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
