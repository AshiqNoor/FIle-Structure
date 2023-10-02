part of ui;

class Organizationlogo extends StatelessWidget {
  const Organizationlogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset(
          //   ImageRasterConstant.cbhc,
          //   width: 80.w,
          //   height: 48.h,
          // ),
          // Image.asset(
          //   ImageRasterConstant.bdlogo,
          //   width: 90.w,
          //   height: 40.h,
          // ),
          Image.asset(
            ImageRasterConstant.who,
            // width: 90.w,
            height: 50.h,
          )
        ],
      ),
    );
  }
}
