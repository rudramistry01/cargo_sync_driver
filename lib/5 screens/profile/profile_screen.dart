import 'package:cargo_sync_driver/6%20global%20widgets/text_wideget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final Size mq = MediaQuery.of(context).size; // Used for responsive sizing

    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: mq.width * .05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              40.verticalSpace,
              const CustomText(
                text: "Profile",
                textType: TextType.heading,
                textWeight: TextWeight.bold,
                color: Colors.grey,
              ),
              30.verticalSpace,
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(mq.height * .1),
                  child: CircleAvatar(
                    radius: 60.sp,
                    child: const Icon(CupertinoIcons.person),
                  ),
                ),
              ),
              30.verticalSpace,
              const CustomText(
                text: "6355311375",
                textType: TextType.bodyLarge,
                textWeight: TextWeight.bold,
                color: Colors.grey,
              ),
              10.verticalSpace,
              const CustomText(
                text: "mistryrudra@yahoo.com",
                textType: TextType.bodyLarge,
                textWeight: TextWeight.bold,
                color: Colors.grey,
              ),
              10.verticalSpace,
              OrderHistoryTile(
                onTap: () {
                  Navigator.pushNamed(context, '/wishlist');
                },
                prefixIcon: Icons.history_rounded,
                title: 'Order History',
                iconColor: Colors.orange,
                backgroundColor: Colors.pink[50]!,
                textColor: Colors.black,
              ),
              OrderHistoryTile(
                onTap: () {
                  Navigator.pushNamed(context, '/wishlist');
                },
                prefixIcon: Icons.telegram,
                title: 'Shipping Address',
                iconColor: Colors.orange,
                backgroundColor: Colors.pink[50]!,
                textColor: Colors.black,
              ),
              OrderHistoryTile(
                onTap: () {
                  Navigator.pushNamed(context, '/wishlist');
                },
                prefixIcon: Icons.person,
                title: 'Edit Profile',
                iconColor: Colors.orange,
                backgroundColor: Colors.pink[50]!,
                textColor: Colors.black,
              ),
              OrderHistoryTile(
                onTap: () {
                  Navigator.pushNamed(context, '/wishlist');
                },
                prefixIcon: Icons.settings,
                title: 'Settings',
                iconColor: Colors.orange,
                backgroundColor: Colors.pink[50]!,
                textColor: Colors.black,
              ),
              OrderHistoryTile(
                onTap: () {},
                prefixIcon: Icons.logout,
                title: 'Log Out',
                iconColor: Colors.orange,
                backgroundColor: Colors.pink[50]!,
                textColor: Colors.black,
              ),
              50.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: Text(
                  "D Commerce",
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                    fontFamily: "DancingScript",
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "v1.0.0",
                  style: TextStyle(
                    fontFamily: "Metrophobic",
                    fontSize: 20.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              70.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

class OrderHistoryTile extends StatelessWidget {
  final VoidCallback onTap;
  final IconData prefixIcon;
  final String title;
  final Color iconColor;
  final Color backgroundColor;
  final Color textColor;

  const OrderHistoryTile({
    super.key,
    required this.onTap,
    this.prefixIcon = Icons.history,
    this.title = 'Order History',
    this.iconColor = const Color(0xFFF29882),
    this.backgroundColor = const Color(0xFFFEEAE6),
    this.textColor = Colors.black54,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Row(
          children: [
            // Circular icon container
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColor,
              ),
              child: Icon(
                prefixIcon,
                color: iconColor,
              ),
            ),
            const SizedBox(width: 10),
            // Text for the title
            Expanded(
              child: CustomText(
                text: title,
                textType: TextType.bodyLarge,
                textWeight: TextWeight.bold,
                color: Colors.grey,
              ),
            ),
            // Arrow icon on the right side
            Icon(
              Icons.chevron_right,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
