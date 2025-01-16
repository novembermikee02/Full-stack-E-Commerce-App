import 'package:ecommerce_frontend_backend/features/tabs/profile_tab/address_screen.dart';
import 'package:ecommerce_frontend_backend/features/tabs/profile_tab/payment_screen.dart';
import 'package:ecommerce_frontend_backend/features/tabs/profile_tab/wishlist_screen.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 20,
            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: const BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Text(
                          'Gilbert Jones',
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('Glbertjones001@gmail.com'),
                        Text('121-224-7890'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Edit'),
                    ),
                  ],
                ),
              ),
              Column(
                spacing: 10,
                children: [
                  ProfileListTile(
                    title: 'Address',
                    pageRedirection: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const AddressScreen();
                          },
                        ),
                      );
                    },
                  ),
                  ProfileListTile(
                    title: 'Wishlist',
                    pageRedirection: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const WishlistScreen();
                          },
                        ),
                      );
                    },
                  ),
                  ProfileListTile(
                    title: 'Payment',
                    pageRedirection: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) {
                            return const PaymentScreen();
                          },
                        ),
                      );
                    },
                  ),
                  ProfileListTile(
                    title: 'Help',
                    pageRedirection: () {},
                  ),
                  ProfileListTile(
                    title: 'Support',
                    pageRedirection: () {},
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final String title;
  final VoidCallback pageRedirection;
  const ProfileListTile({
    super.key,
    required this.title,
    required this.pageRedirection,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pageRedirection,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: const BoxDecoration(
          color: textFieldColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: ListTile(
          title: Text(title),
          trailing: const Icon(Iconsax.arrow_right_3_copy),
        ),
      ),
    );
  }
}
