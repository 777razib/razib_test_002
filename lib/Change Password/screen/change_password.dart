import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Help & Support/Screen/help_ support.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final TextEditingController _controllerExistingPassword=TextEditingController();
  final TextEditingController _controllerNewPassword=TextEditingController();
  final GlobalKey<FormState> _key=GlobalKey<FormState>();
  late bool _isIconVisible=false;
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
              "Change Password",
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
            padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Existing Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF212529)),),
                SizedBox(height: 8,),
                Form(
                    key: _key,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      TextFormField(
                      obscureText: !_isIconVisible,
                      textInputAction: TextInputAction.next,
                      controller: _controllerExistingPassword,
                      decoration: InputDecoration(
                        hintText: "Existing password",
                        hintStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF999B9D)),
                        filled: true,
                        fillColor: Color(0xFFFFFFFF),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isIconVisible ? Icons.visibility : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isIconVisible = !_isIconVisible;
                            });
                          },
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
                        Text("New Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF212529)),),
                        SizedBox(height: 8,),
                  TextFormField(
                    obscureText: !_isIconVisible,
                    textInputAction: TextInputAction.next,
                    controller: _controllerExistingPassword,
                    decoration: InputDecoration(
                      hintText: "Existing password",
                      hintStyle: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF999B9D)),
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isIconVisible ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isIconVisible = !_isIconVisible;
                          });
                        },
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
                        Text("Confirm Password",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF212529)),),
                        SizedBox(height: 8,),
                        TextFormField(
                          textInputAction:TextInputAction.done,

                          decoration: InputDecoration(
                            hintText: "Confirm password",
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
                    "Change Password",
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
    _controllerExistingPassword.dispose();
    _controllerNewPassword.dispose();
    super.dispose();
  }
}

