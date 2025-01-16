import 'package:ecommerce_frontend_backend/features/tabs/profile_tab/add_address.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text(
          'Address',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            AddressList(
              address: '2715 Ash Dr. San Jose, South Dakota 83475',
              pageRedirection: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const AddAddress();
                    },
                  ),
                );
              },
            ),
            AddressList(
              address: '2715 Ash Dr. San Jose, South Dakota 83475',
              pageRedirection: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class AddressList extends StatelessWidget {
  final String address;
  final VoidCallback pageRedirection;
  const AddressList({
    super.key,
    required this.address,
    required this.pageRedirection,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: textFieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Flexible(
            child: Text(
              '2715 Ash Dr. San Jose, South Dakota 83475',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          TextButton(
            onPressed: pageRedirection,
            child: const Text(
              'Edit',
            ),
          ),
        ],
      ),
    );
  }
}
