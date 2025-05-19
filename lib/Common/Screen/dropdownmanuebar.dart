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
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Green Header and Avatar
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 160,
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
                          radius: 45,
                          backgroundImage: AssetImage('assets/images/profile_avatar.png'),
                        ),
                        Positioned(
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add, size: 16, color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Abel's Delivery Service",
                      style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const Text(
                      "+444 888 6678",
                      style: TextStyle(color: Colors.black54),
                    ),
                    const Text(
                      "abeldelivery@gmail.com",
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 80), // Push content below avatar

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
      elevation: 0,
      color: tileBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
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
      elevation: 0,
      color: tileBackgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing: Switch(
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