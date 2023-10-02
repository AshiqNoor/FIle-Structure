part of ui;

class Developbylogo extends StatelessWidget {
  const Developbylogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 20).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppConstant.developmentPartner.tr),
          Image.asset(
            ImageRasterConstant.who,
            width: 90.w,
            height: 40.h,
          )
        ],
      ),
    );
  }
}
