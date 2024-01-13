part of 'message_bloc.dart';

abstract class MessageEvent extends Equatable {
  const MessageEvent();
}

class MessageEventSend extends MessageEvent {
  final String message;

  const MessageEventSend(this.message);

  @override
  List<Object> get props => [message];
}