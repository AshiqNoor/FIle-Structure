part of ui;

class LanguageButton extends StatelessWidget {
  const LanguageButton({Key? key, this.width = 32, this.height = 32})
      : super(key: key);
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseControlle>(
      init: BaseControlle(),
      initState: (_) {},
      builder: (c) {
        return InkWell(
          highlightColor: transparentCOLOR,
          splashColor: transparentCOLOR,
          onTap: () => c.changelanguage(),
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(
              isChangeLanguage.value
                  ? IconPath.languageInactive
                  : IconPath.languageActive,
              width: width.w,
              height: height.w,
              // scale: 1,
            ),
            //  SvgPicture.asset(
            //   ImageVectorConstant.language, height: 24,
            //   width: 24,
            //   color: isChangeLanguage.value ? Colors.black : Colors.orange,
            //   //fit: BoxFit.fitWidth,
            // ),
          ),
        );
      },
    );
  }
}
