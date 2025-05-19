import 'package:flutter/material.dart';

class ProfileSettingsScreen extends StatefulWidget {
  const ProfileSettingsScreen({super.key});

  @override
  State<ProfileSettingsScreen> createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  bool isNotificationEnabled = true;
  static const primaryColor = Color(0xFF36C556);
  static const tileBackgroundColor = Color(0xFFFBFBFB);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Green Header and Avatar
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                color: primaryColor,
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/image/Ellipse 50 (1).png'),
                        ),
                        Positioned(
                          bottom: 0,
                          child: GestureDetector(
                            onTap: (){},
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Color(0xFF36C556),
                              child: Icon(Icons.add, size: 16, color: Color(0xFFFAFAFA)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Abel's Delivery Service",
                      style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "+444 888 6678",
                      style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400),
                    ),
                    const Text(
                      "abeldelivery@gmail.com",
                      style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 160), // Push content below avatar

          // Menu Options
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                _buildTile(Icons.person_outline, "Personal Information"),
                _buildTile(Icons.directions_car, "Vehicle Information"),
                _buildTile(Icons.attach_money, "Set Your Price"),
                _buildTile(Icons.lock_outline, "Password"),
                _buildSwitchTile(Icons.notifications_none, "Notification"),
                _buildTile(Icons.description_outlined, "Terms & Privacy"),
                _buildTile(Icons.help_outline, "Help & Support"),
                _buildTile(Icons.feedback_outlined, "Share Feedback"),
                _buildTile(Icons.delete_outline, "Delete Account"),
                _buildTile(Icons.logout, "Sign Out"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 1,
      color: Color(0xFFFEFEFE),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF4d5154)),
        title: Text(title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          // Handle tap
        },
      ),
    );
  }

  Widget _buildSwitchTile(IconData icon, String title) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      elevation: 1,
      color: tileBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Color(0xFF4D5154)),
        title: Text(title),
        trailing: Switch(
          activeColor:Color(0xFF4D5154) ,
          value: isNotificationEnabled,
          onChanged: (value) {
            setState(() {
              isNotificationEnabled = value;
            });
          },
        ),
      ),
    );
  }
}