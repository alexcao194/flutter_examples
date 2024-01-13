import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/message_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<String> _messages = [
    'Hello',
    'Welcome',
    'Alex',
    ""
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessageBloc, MessageState>(
      builder: (context, messageState) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text('Bloc Demo'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Message: ', style: TextStyle(fontSize: 24)),
                _getContent(messageState),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List<Widget>.generate(
                    _messages.length,
                        (index) =>
                        ElevatedButton(
                          onPressed: () {
                            _onPressed(context, index);
                          },
                          child: Text(_messages[index]),
                        ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _onPressed(BuildContext context, int index) {
    BlocProvider.of<MessageBloc>(context).add(MessageEventSend(_messages[index]));
  }

  _getContent(MessageState messageState) {
    switch (messageState.runtimeType) {
      case MessageInitial:
        return const Text('No message sent yet');
      case MessageStateSent:
        return Text((messageState as MessageStateSent).message, style: const TextStyle(fontSize: 24));
      case MessageStateError:
        return Text((messageState as MessageStateError).error, style: const TextStyle(fontSize: 24, color: Colors.red));
      case MessageStateLoading:
        return const CircularProgressIndicator();
      default:
        return const Text('Unknown message state');
    }
  }
}
