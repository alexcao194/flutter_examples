import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network_status_listener/bloc/test_bloc.dart';
import 'package:network_status_listener/utils/connectivity_service.dart';
import 'package:network_status_listener/utils/dialog_tools.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConnectivityService.init();
  runApp(
    BlocProvider(create: (context) => TestBloc(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late StreamSubscription<bool> _connectionSubscription;
  late StreamSubscription<TestState> _testSubscription;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TestBloc, TestState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(widget.title),
              ),
              body: SafeArea(
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(state.data),
                        ],
                      ),
                      if (state.loading)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                    ],
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  _test();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              )),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _listen();
  }

  void _test() {
    context.read<TestBloc>().add(const TestEvent.testFailure());
  }

  void _listen() {
    _testSubscription = context.read<TestBloc>().stream.listen((state) {
      if (state.error != null) {
        DialogTools.showRetryableErrorDialog(
          context: context,
          message: state.error!,
          onRetry: () {
            context.read<TestBloc>().add(const TestEvent.testSuccess());
          },
        );
      }
    });
    _connectionSubscription = ConnectivityService.statusStream.listen((hasConnection) {
      print('hasConnection: $hasConnection');
      if (!hasConnection) {
        DialogTools.showRetryableErrorDialog(
          context: context,
          message: 'No connection',
          onRetry: () {
            BlocProvider.of<TestBloc>(context).add(const TestEvent.testSuccess());
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _connectionSubscription.cancel();
    _testSubscription.cancel();
    super.dispose();
  }
}
