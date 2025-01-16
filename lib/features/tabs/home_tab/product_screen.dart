import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Iconsax.heart_copy,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProductSlide(),
                const SizedBox(height: 30),
                const Text(
                  "Men's Harrington Jacket",
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "\$148",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Size',
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Text(
                              'S',
                              style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              Iconsax.arrow_down_1_copy,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Color',
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Icon(
                              Iconsax.arrow_down_1_copy,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color: textFieldColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Quintity',
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                CupertinoIcons.minus,
                                color: whiteColor,
                                size: 18,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              '1',
                              style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                CupertinoIcons.plus,
                                color: whiteColor,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.',
                  style: TextStyle(
                    color: TextFiledTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Shipping & Returns',
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Free standard shipping and free 60-day returns',
                  style: TextStyle(
                    color: TextFiledTextColor,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '4.5 Ratings',
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 5),
                const Text('213 Reviews'),
                const SizedBox(height: 20),
                const ReviewSection(),
                const SizedBox(height: 20),
                const ReviewSection(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: CupertinoButton(
              padding: EdgeInsets.zero,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$148',
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Add to Bag',
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class ProductSlide extends StatelessWidget {
  const ProductSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset('assets/images/products/product_11.png'),
          const SizedBox(width: 30),
          Image.asset('assets/images/products/product_12.png'),
          const SizedBox(width: 30),
          Image.asset('assets/images/products/product_11.png'),
          const SizedBox(width: 30),
          Image.asset('assets/images/products/product_12.png'),
        ],
      ),
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/images/profile.png'),
                const SizedBox(width: 10),
                const Text(
                  'Alex Morgan',
                  style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            StarRating(
              allowHalfRating: false,
              rating: 3,
              color: primaryColor,
            )
          ],
        ),
        const SizedBox(height: 5),
        const Text(
          'Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.',
          style: TextStyle(
            color: TextFiledTextColor,
          ),
        ),
        const Text(
          '12days ago',
          style: TextStyle(
            color: blackColor,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
