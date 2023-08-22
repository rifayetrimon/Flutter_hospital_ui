import 'package:hospital/consts/consts.dart';
import 'package:hospital/consts/fonts.dart';

import 'package:hospital/res/component/custom_textfield.dart';
import 'package:hospital/views/doctor_profile_view/doctor_profile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.bgNavColor,
        title: AppStyles.bold(
            title: "${AppStrings.welcome} User",
            color: AppColors.bgColor,
            size: AppSizes.size20),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            color: AppColors.bgNavColor,
            child: Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    hint: AppStrings.search,
                    borderColor: AppColors.bgColor,
                    textColor: AppColors.bgColor,
                  ),
                ),
                10.widthBox,
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: AppColors.bgColor,
                    ))
              ],
            ),
          ),
          20.heightBox,
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.bgNavColor,
                            ),
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                Image.asset(
                                  iconsList[index],
                                  width: 30,
                                  color: Vx.randomPrimaryColor,
                                ),
                                5.heightBox,
                                AppStyles.normal(
                                    title: iconsTitleList[index],
                                    color: AppColors.bgColor)
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppStyles.bold(
                      title: "Popular Doctors",
                      color: AppColors.bgNavColor,
                      size: AppSizes.size18),
                ),
                10.heightBox,
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Get.to(() => const DoctorProfileView());
                          },
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                                color: AppColors.bgNavColor,
                                borderRadius: BorderRadius.circular(12)),
                            margin: EdgeInsets.only(right: 8),
                            height: 100,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  color: AppColors.bgNavColor,
                                  child: Image.asset(
                                    AppAssets.logPic,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                5.heightBox,
                                AppStyles.normal(title: "Doctor Name"),
                                5.heightBox,
                                AppStyles.normal(
                                    title: "Category",
                                    color: AppColors.bgDarkColor),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                5.heightBox,
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AppStyles.normal(
                        title: "View All", color: AppColors.bgNavColor),
                  ),
                ),
                20.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        4,
                        (index) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.bgNavColor,
                              ),
                              padding: EdgeInsets.all(12),
                              height: 100,
                              child: Column(
                                children: [
                                  Image.asset(AppAssets.body,
                                      width: 25, color: AppColors.bgDarkColor),
                                  5.heightBox,
                                  AppStyles.normal(
                                      title: "Lab Test",
                                      color: AppColors.bgDarkColor),
                                ],
                              ),
                            )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
