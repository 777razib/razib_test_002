import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Help & Support/Screen/help_ support.dart';

class ShareFeedback extends StatefulWidget {
  const ShareFeedback({super.key});

  @override
  State<ShareFeedback> createState() => _ShareFeedbackState();
}

class _ShareFeedbackState extends State<ShareFeedback> {
  final TextEditingController _controllerSubject=TextEditingController();
  final TextEditingController _controllerComments=TextEditingController();
  final GlobalKey<FormState> _key=GlobalKey<FormState>();
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
              "Share Feedback",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0,right: 24.0),
            child: Center(child: Text("Let us know about bugs, suggestions, or any other issues you’ve encountered.",style: TextStyle(fontSize:16,color:Color(0xFF4D5154),fontWeight: FontWeight.w500 ),)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Subject",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF212529)),),
                SizedBox(height: 8,),
                Form(
                  key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                      controller: _controllerSubject,
                      decoration: InputDecoration(
                        hintText: "Enter feedback subject",
                        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF999B9D)),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF36C556), width: 1.5),
                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Text("Comments",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF212529)),),
                    SizedBox(height: 8,),
                    TextFormField(
                      textInputAction:TextInputAction.done,
                      controller: _controllerComments,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: "Provide more details (optional)",
                        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF999B9D)),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Color(0xFF36C556), width: 1.5),
                        ),
                      ),
                    ),

                  ],
                ))

              ],
            ),
          ),
          const SizedBox(height: 300),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: const Color(0xFF36C556),
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () {
                  Get.to(() => const HelpAndSupport());
                },
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xFF0E1011)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controllerSubject.dispose();
    _controllerComments.dispose();
    super.dispose();
  }
}

