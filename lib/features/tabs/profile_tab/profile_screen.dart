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
          padding: const EdgeInsets.all(20),
          child: Column(
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
                decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Text(
                          'Aditya Mike',
                          style: TextStyle(
                            color: blackColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text('aditya@gmail.com'),
                        Text('121-224-7890'),
                      ],
                    ),
                    TextButton(onPressed: () {}, child: const Text('Edit'))
                  ],
                ),
              ),
              Column(
                spacing: 10,
                children: [
                  ProfileListTile(
                    title: 'Address',
                    pageRedirection: () {},
                  ),
                  ProfileListTile(
                    title: 'Wishlist',
                    pageRedirection: () {},
                  ),
                  ProfileListTile(
                    title: 'Payment',
                    pageRedirection: () {},
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
                  ))
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
  const ProfileListTile(
      {super.key, required this.title, required this.pageRedirection});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pageRedirection,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: textFieldColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: ListTile(
          title: Text(title),
          trailing: const Icon(Iconsax.arrow_right_3_copy),
        ),
      ),
    );
  }
}
