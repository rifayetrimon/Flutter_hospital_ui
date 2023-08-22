import 'package:hospital/consts/consts.dart';

class CustomButtom extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  const CustomButtom(
      {super.key, required this.buttonText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth - 15,
      height: 44,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.bgNavColor,
          shape: const StadiumBorder(),
        ),
        onPressed: onTap,
        child: buttonText.text.make(),
      ),
    );
  }
}
