import 'package:flutter/material.dart';
import 'package:hospital/consts/consts.dart';
import 'package:hospital/consts/fonts.dart';
import 'package:hospital/consts/lists.dart';
import '../../consts/colors.dart';

class CategoryDetailsview extends StatelessWidget {
  const CategoryDetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PrimaryColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.bgNavColor,
        title: AppStyles.bold(
            title: "Category Name",
            size: AppSizes.size20,
            color: AppColors.bgDarkColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 200,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                    color: AppColors.itemColor,
                    borderRadius: BorderRadius.circular(12)),
                margin: EdgeInsets.only(right: 8),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: AppColors.bgNavColor,
                      child: Image.asset(
                        drimgList[index],
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    5.heightBox,
                    AppStyles.normal(title: "Doctor Name"),
                    VxRating(
                      selectionColor: AppColors.yellowColor,
                      onRatingUpdate: (value) {},
                      maxRating: 5,
                      count: 5,
                      value: 3.5,
                      stepInt: true,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
