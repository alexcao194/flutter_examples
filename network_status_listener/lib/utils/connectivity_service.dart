import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
   ConnectivityService._();

  static late Connectivity _connectivity;
  static late Stream<ConnectivityResult> _connectivityStream;
  static late Stream<bool> _statusStream;

  static Future<void> init() async {
    _connectivity = Connectivity();
    _connectivityStream = _connectivity.onConnectivityChanged.asBroadcastStream();
    _statusStream = _connectivityStream.map((ConnectivityResult result) {
      return result != ConnectivityResult.none;
    });
  }

  static Stream<ConnectivityResult> get connectivityStream => _connectivityStream;
  static Stream<bool> get statusStream => _statusStream;

  static Future<bool> get isConnected async {
    final ConnectivityResult result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }
}