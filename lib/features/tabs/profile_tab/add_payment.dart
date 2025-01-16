import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPayment extends StatelessWidget {
  const AddPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text('Add Card'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 18,
          children: [
            CupertinoTextField(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              placeholder: 'Card Number',
              placeholderStyle:
                  // ignore: deprecated_member_use
                  TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
              decoration: BoxDecoration(
                color: textFieldColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            Row(
              spacing: 10,
              children: [
                Flexible(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    placeholder: 'CCV',
                    placeholderStyle:
                        // ignore: deprecated_member_use
                        TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                    decoration: BoxDecoration(
                      color: textFieldColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Flexible(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    placeholder: 'Exp',
                    placeholderStyle:
                        // ignore: deprecated_member_use
                        TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                    decoration: BoxDecoration(
                      color: textFieldColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
            CupertinoTextField(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              placeholder: 'Cardholder Name',
              placeholderStyle:
                  // ignore: deprecated_member_use
                  TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
              decoration: BoxDecoration(
                color: textFieldColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: CupertinoButton(
                onPressed: () {},
                child: const Text(
                  'Save',
                  style: TextStyle(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
