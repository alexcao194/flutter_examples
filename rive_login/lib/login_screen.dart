import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:rive_login/generated/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  Artboard? _artboard;
  late final SMITrigger _successTrigger, _failTrigger;
  late final SMIBool _isHandUp, _isChecking;
  late final SMINumber _numLook;

  late StateMachineController _stateController;

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: size.height - kBottomNavigationBarHeight,
                child: Column(
                  children: [
                    SizedBox(
                      height: 300,
                      child: Center(
                        child: _artboard != null
                            ? Rive(
                                artboard: _artboard!,
                                fit: BoxFit.cover,
                              )
                            : const SizedBox(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          border:  Border.all(
                              color: Theme.of(context).colorScheme.primaryContainer,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Column(
                          children: [
                            RoundedTextField(
                              hintText: 'Email',
                              obscureText: false,
                              controller: _email,
                              onTap: lookOn,
                              onChanged: lookFollow,
                              onTapOutside: (event) => stopLooking(),
                            ),
                            const SizedBox(height: 16),
                            RoundedTextField(
                              hintText: "Password",
                              obscureText: true,
                              controller: _password,
                              onTap: handOn,
                              onTapOutside: (event) => stopLooking(),
                            ),
                            const SizedBox(height: 16),
                            ElevatedButton(
                                onPressed: login,
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  child: const Text('Login'),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Sign up')
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (_isLoading)
              Container(
                color: Colors.black.withOpacity(0.5),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              )
          ],
        )
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();

    rootBundle.load(Assets.riveBear).then((value) {
      final file = RiveFile.import(value);
      final artboard = file.mainArtboard;
      _stateController = StateMachineController.fromArtboard(artboard, 'Login Machine')!;
      _artboard = artboard;
      _artboard!.addController(_stateController);

      for (var element in _stateController.inputs) {
        if (element.name == 'isHandsUp') {
          _isHandUp = element as SMIBool;
        } else if (element.name == 'isChecking') {
          _isChecking = element as SMIBool;
        } else if (element.name == 'numLook') {
          _numLook = element as SMINumber;
        } else if (element.name == 'trigSuccess') {
          _successTrigger = element as SMITrigger;
        } else if (element.name == 'trigFail') {
          _failTrigger = element as SMITrigger;
        }
      }

      setState(() {
        _artboard = artboard;
      });
    });
  }

  void handOn() {
    _isHandUp.change(true);
  }

  void stopLooking() {
    _isChecking.change(false);
    _isHandUp.change(false);
  }

  void lookOn() {
    _isChecking.change(true);
    _isHandUp.change(false);
    _numLook.change(0);
  }

  void lookFollow(String value) {
    _numLook.change(value.length.toDouble());
  }

  void login() {
    _isChecking.change(false);
    _isHandUp.change(false);
    setState(() {
      _isLoading = true;
    });
    Future.delayed(const Duration(seconds: 2)).then((value) {
      setState(() {
        _isLoading = false;
      });
      if (_email.text == 'alexcao194@gmail.com' && _password.text == '123456') {
        _successTrigger.fire();
      } else {
        _failTrigger.fire();
      }
    });
  }
}


class RoundedTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final Function(PointerDownEvent)? onTapOutside;
  const RoundedTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    this.onTap,
    this.onChanged,
    this.onTapOutside
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.5),
        borderRadius: BorderRadius.circular(100),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration.collapsed(hintText: hintText),
        onTap: onTap,
        onChanged: onChanged,
        onTapOutside: onTapOutside,
      )
    );
  }
}
