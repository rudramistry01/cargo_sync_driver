import 'package:cargo_sync_driver/6%20global%20widgets/text_wideget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          30.verticalSpace,
          const UserInfoHeader(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(22.sp),
                border: Border.all(
                  color: Colors.black, // Set the border color
                  width: 1, // Set the border width
                ),
              ),
              child: GridView.count(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                crossAxisCount: 2,
                crossAxisSpacing: 16.w,
                mainAxisSpacing: 16.h,
                children: const [
                  HomeTile(
                      icon: Icons.add_circle,
                      title: 'New Trip',
                      subtitle: 'Start your trip.'),
                  HomeTile(
                      icon: Icons.list,
                      title: 'All Trips',
                      subtitle: 'View all trips.'),
                  HomeTile(
                      icon: Icons.attach_money,
                      title: 'Expenses',
                      subtitle: 'Manage expenses.'),
                  HomeTile(
                      icon: Icons.support_agent,
                      title: 'Support',
                      subtitle: 'Get help.'),
                  HomeTile(
                      icon: Icons.work, title: 'Jobs', subtitle: 'Find jobs.'),
                  HomeTile(
                      icon: Icons.book,
                      title: 'Ledger',
                      subtitle: 'View ledger.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class UserInfoHeader extends StatelessWidget {
  const UserInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(22.sp),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomText(
            text: "Name",
            textType: TextType.title,
            textWeight: TextWeight.semiBold,
          ),
          20.verticalSpace,
          const Row(
            children: [
              CustomText(
                text: "Driver Id :-",
                textType: TextType.bodySmall,
                textWeight: TextWeight.light,
                color: Colors.black,
              ),
              CustomText(
                text: "123343434534",
                textType: TextType.bodySmall,
                textWeight: TextWeight.light,
                color: Colors.black,
              ),
            ],
          ),
          10.verticalSpace,
          const Row(
            children: [
              CustomText(
                text: "Driver Id :-",
                textType: TextType.bodySmall,
                textWeight: TextWeight.light,
                color: Colors.black,
              ),
              CustomText(
                text: "123343434534",
                textType: TextType.bodySmall,
                textWeight: TextWeight.light,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const HomeTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 48.r, color: Colors.orangeAccent),
            SizedBox(height: 8.h),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 4.h),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
