part of services;

StreamSubscription<InternetConnectionStatus>? connectionChangeStream;

void checkInternetConnectivity() {
  connectionChangeStream =
      InternetConnectionChecker().onStatusChange.listen((status) {
    switch (status) {
      case InternetConnectionStatus.connected:
        print('Internet connected!');
        // Perform actions when internet is connected
        break;
      case InternetConnectionStatus.disconnected:
        print('Internet disconnected!');
        // Perform actions when internet is disconnected
        break;
      default:
        break;
    }
  });
}

void cancelInternetConnectivityCheck() {
  connectionChangeStream!.cancel();
}

enum InternetConnectionStatus { connected, disconnected }

class InternetConnectionChecker {
  final StreamController<InternetConnectionStatus> _controller =
      StreamController<InternetConnectionStatus>.broadcast();
  late Timer _timer;

  InternetConnectionChecker() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _checkInternetConnection();
    });
  }

  Stream<InternetConnectionStatus> get onStatusChange => _controller.stream;

  void _checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        _controller.add(InternetConnectionStatus.connected);
      } else {
        _controller.add(InternetConnectionStatus.disconnected);
      }
    } on SocketException catch (_) {
      _controller.add(InternetConnectionStatus.disconnected);
    }
  }

  void dispose() {
    _timer.cancel();
    _controller.close();
  }
}
