part of ui;

class AppSnackbar {
  static void showMessage(String msg) {
    final context = navigatorKey.currentState!.context;
    final snackBar = SnackBar(
      onVisible: () {
        isSnackBarVisible.value = true;
        // log("${isSnackBarVisible.value}");
        log('SnackBar is visible!');
      },
      content: Container(
        decoration: BoxDecoration(
          // color: buttonCOLOR,
          gradient: const LinearGradient(
            colors: <Color>[
              Colors.blueAccent,
              Colors.lightBlueAccent,
            ],
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8.0),
          child: Center(
            child: Text(
              msg,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
      duration: const Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(1),
      // ),
      width: double.infinity,
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(snackBar)
        .closed
        .then((SnackBarClosedReason reason) {
      if (reason == SnackBarClosedReason.action) {
        isSnackBarVisible.value = false;
        log('SnackBar was dismissed by tapping the action button.');
      } else {
        isSnackBarVisible.value = false;
        log('SnackBar was dismissed by timing out.');
        // log("${isSnackBarVisible.value}");
      }
    });
  }

  static void dispose() {
    final context = navigatorKey.currentState!.context;
    ScaffoldMessenger.of(context).clearSnackBars();
  }
}
