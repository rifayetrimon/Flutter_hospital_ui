import 'package:hospital/consts/consts.dart';
import 'package:hospital/consts/fonts.dart';
import 'package:hospital/consts/lists.dart';
import 'package:hospital/views/category_details_view/category_details_view.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.bgNavColor,
        title: AppStyles.bold(
            title: AppStrings.category,
            size: AppSizes.size20,
            color: AppColors.bgDarkColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
            physics: BouncingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              mainAxisExtent: 200,
            ),
            itemCount: specialistListName.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => const CategoryDetailsview());
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.itemColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        specialistListIcon[index],
                        width: 70,
                      ),
                      30.heightBox,
                      AppStyles.bold(
                        title: specialistListName[index],
                        color: AppColors.textColor,
                        size: AppSizes.size16,
                      ),
                      10.heightBox,
                      AppStyles.bold(
                        title: speciaListCount[index],
                        color: AppColors.textColor,
                        size: AppSizes.size12,
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
