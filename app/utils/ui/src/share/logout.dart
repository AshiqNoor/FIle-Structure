part of ui;

class LogoutButton extends GetView<HomeController> {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        IconPath.logout,
        width: 32.w,
        height: 32.w,
        // scale: 1,
      ),
      // svgIcon!,
      //  Image.asset(
      //   IconPath.logo,
      //   scale: 4,
      // ),
      //     const Icon(
      //   Icons.logout,
      //   // size: 30,
      //   color: Colors.white,
      // ),
      onPressed: () async {
        await openDialog(context);
      },
    );
  }

  Future<void> openDialog(BuildContext context) async {
    // final context = navigatorKey.currentState!.context;
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0,
            backgroundColor: const Color(0xffffffff),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 15.h),
                Text(
                  AppConstant.logout.tr,
                  style: isChangeLanguage.value
                      ? dialougTitleTextEn
                      : dialougTitleTextBn,
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.r),
                  child: Text(
                    AppConstant.areYouSure.tr,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.only(
                        bottomLeft: const Radius.circular(15.0).w,
                        bottomRight: const Radius.circular(15.0).w,
                      ),
                      highlightColor: Colors.grey[200],
                      onTap: () {
                        Get.back();
                      },
                      child: Center(
                        child: Text(
                          AppConstant.cancel.tr,
                          style: isChangeLanguage.value
                              ? dialougButtonTextEn
                              : dialougButtonTextBn,
                        ),
                      ),
                    ),
                    InkWell(
                      // splashColor: transparentCOLOR,
                      // highlightColor: transparentCOLOR,
                      onTap: () {
                        AppSnackbar.dispose();
                        controller.logout();
                      },
                      child: Center(
                        child: Text(
                          AppConstant.logout.tr,
                          style: isChangeLanguage.value
                              ? dialougButtonTextEn
                              : dialougButtonTextBn,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
              ],
            ),
          );
        });
  }
}
