import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Share Feedback/Screen/share_feedback.dart';

class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundColor: const Color(0xFFEBFBEF),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
          ),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(4),
            ),
            child: const Text(
              "Help & Support",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, right: 20, bottom: 10, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Need Help Right Now?",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 16),
            Material(
              color: const Color(0xFFC2F3CD),
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {
                  Get.to(() => const ShareFeedback());
                },
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Start Live Chat",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Connect with our support team in real time.",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 5),
            const Text(
              "Typically replies in under 5 mins",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14, color: Color(0xFF4D5154)),
            ),
          ],
        ),
      ),
    );
  }
}
