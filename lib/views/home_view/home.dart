import 'package:hospital/consts/consts.dart';
import 'package:hospital/views/category_view/category_view.dart';
import 'package:hospital/views/doctor_profile_view/doctor_profile_view.dart';
import 'package:hospital/views/home_view/home_view.dart';
import 'package:hospital/views/settings_view/settings_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  List screenList = [
    const HomeView(),
    const CategoryView(),
    const DoctorProfileView(),
    const SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.bgDarkColor,
          selectedLabelStyle: TextStyle(
            color: AppColors.bgDarkColor,
          ),
          selectedIconTheme: IconThemeData(
            color: AppColors.bgDarkColor,
          ),
          backgroundColor: AppColors.bgNavColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: "Category"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Doctor"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
