import 'package:flutter/material.dart';
import 'package:hospital/consts/colors.dart';
import 'package:hospital/consts/consts.dart';
import 'package:hospital/consts/fonts.dart';
import 'package:hospital/consts/images.dart';
import 'package:hospital/res/component/custom_button.dart';

class DoctorProfileView extends StatelessWidget {
  const DoctorProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgNavColor,
        title: AppStyles.bold(
            title: "Doctor Name",
            color: AppColors.bgDarkColor,
            size: AppSizes.size20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // CircleAvatar(
                    //   radius: 40,
                    //   child: Image.asset(AppAssets.dr10),
                    // ),
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: Image.asset(AppAssets.dr12),
                    ),
                    10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppStyles.bold(
                              title: "Doctor Name",
                              color: AppColors.bgNavColor,
                              size: AppSizes.size16),
                          AppStyles.normal(
                              title: "Category",
                              color: AppColors.bgNavColor,
                              size: AppSizes.size12),
                          const Spacer(),
                          VxRating(
                            selectionColor: AppColors.yellowColor,
                            onRatingUpdate: (value) {},
                            maxRating: 5,
                            count: 5,
                            value: 4,
                            stepInt: true,
                          ),
                        ],
                      ),
                    ),
                    AppStyles.bold(
                        title: "See all reviews",
                        color: AppColors.bgNavColor,
                        size: AppSizes.size12),
                  ],
                ),
              ),
              10.heightBox,
              Container(
                decoration: BoxDecoration(
                  color: AppColors.itemColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: AppStyles.bold(
                          title: "Phone Number", color: AppColors.textColor),
                      subtitle: AppStyles.normal(
                          title: "+0035367445", color: AppColors.textColor),
                      trailing: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.yellowColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.phone,
                          color: AppColors.bgDarkColor,
                        ),
                      ),
                    ),
                    10.heightBox,
                    AppStyles.bold(
                        title: "About",
                        color: AppColors.textColor,
                        size: AppSizes.size16),
                    5.heightBox,
                    AppStyles.normal(
                        title: "This  is about of the following doctor",
                        color: AppColors.textColor.withOpacity(0.5),
                        size: AppSizes.size12),
                    10.heightBox,
                    AppStyles.bold(
                        title: "Address",
                        color: AppColors.textColor,
                        size: AppSizes.size16),
                    5.heightBox,
                    AppStyles.normal(
                        title: "Address of the doctor",
                        color: AppColors.textColor.withOpacity(0.5),
                        size: AppSizes.size12),
                    10.heightBox,
                    AppStyles.bold(
                        title: "Working Time",
                        color: AppColors.textColor,
                        size: AppSizes.size16),
                    5.heightBox,
                    AppStyles.normal(
                        title: "9:00 AM to 5:30 PM",
                        color: AppColors.textColor.withOpacity(0.5),
                        size: AppSizes.size12),
                    10.heightBox,
                    AppStyles.bold(
                        title: "Services",
                        color: AppColors.textColor,
                        size: AppSizes.size16),
                    5.heightBox,
                    AppStyles.normal(
                        title: "This services are given by the doctor",
                        color: AppColors.textColor.withOpacity(0.5),
                        size: AppSizes.size12),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomButtom(buttonText: "Book an appointment", onTap: () {}),
      ),
    );
  }
}
