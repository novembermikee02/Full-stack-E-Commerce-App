import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        title: const Text('Add Address'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 18,
          children: [
            CupertinoTextField(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              placeholder: 'Street Address',
              placeholderStyle:
                  // ignore: deprecated_member_use
                  TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
              decoration: BoxDecoration(
                color: textFieldColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            CupertinoTextField(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              placeholder: 'City',
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
                    placeholder: 'State',
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
                    placeholder: 'Zip Code',
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
