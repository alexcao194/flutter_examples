part of 'message_bloc.dart';

abstract class MessageState extends Equatable {
  const MessageState();
}

class MessageInitial extends MessageState {
  @override
  List<Object> get props => [];
}

class MessageStateSent extends MessageState {
  final String message;

  const MessageStateSent(this.message);

  @override
  List<Object> get props => [message];
}

class MessageStateError extends MessageState {
  final String error;

  const MessageStateError(this.error);

  @override
  List<Object> get props => [error];
}

class MessageStateLoading extends MessageState {
  @override
  List<Object> get props => [];
}
