import 'package:flutter/material.dart';
import 'package:hospital/consts/consts.dart';
import 'package:hospital/consts/fonts.dart';
import 'package:hospital/consts/lists.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: AppStyles.bold(
            title: AppStrings.settings,
            color: AppColors.bgDarkColor,
            size: AppSizes.size20),
        backgroundColor: AppColors.bgNavColor,
      ),
      body: Column(
        children: [
          ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset(AppAssets.dr12),
            ),
            title: AppStyles.bold(title: "Username"),
            subtitle: AppStyles.normal(title: "user_emil@gmail.com"),
          ),
          const Divider(),
          10.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(
                settingList.length,
                (index) => ListTile(
                      onTap: () {},
                      leading: Icon(
                        settingsListIcon[index],
                        color: AppColors.bgNavColor,
                      ),
                      title: AppStyles.bold(title: settingList[index]),
                    )),
          )
        ],
      ),
    );
  }
}
