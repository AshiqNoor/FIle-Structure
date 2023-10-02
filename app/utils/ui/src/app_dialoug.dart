part of ui;

class AppDialoug extends GetView<BaseControlle> {
  const AppDialoug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: Get.height * .5,
        height: Get.height * .48,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, right: 15).r,
                child: InkWell(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.cancel,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              AppConstant.warning.tr,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SizedBox(
                width: Get.width * .75,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
            // const _ContinuePassUpdateButton(),
          ],
        ),
      ),
    );
  }
}
