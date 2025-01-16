import 'package:ecommerce_frontend_backend/features/tabs/profile_tab/add_payment.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text(
          'Payment',
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
            const Text(
              'Card',
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            PaymentList(
              cardnum: '*****3475',
              pageRedirection: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) {
                      return const AddPayment();
                    },
                  ),
                );
              },
            ),
            PaymentList(
              cardnum: '*****2715',
              pageRedirection: () {},
            ),
            const Text(
              'Paypal',
              style: TextStyle(
                color: blackColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            PaymentList(
              cardnum: 'Cloth@gmail.com',
              pageRedirection: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentList extends StatelessWidget {
  final String cardnum;
  final VoidCallback pageRedirection;
  const PaymentList({
    super.key,
    required this.cardnum,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              cardnum,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          IconButton(
            onPressed: pageRedirection,
            icon: const Icon(Iconsax.arrow_right_3_copy),
          ),
        ],
      ),
    );
  }
}
