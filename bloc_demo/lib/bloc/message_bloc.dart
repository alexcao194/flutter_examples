import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc() : super(MessageInitial()) {
    on<MessageEventSend>(_onMessageEventSend);
  }

  FutureOr<void> _onMessageEventSend(MessageEventSend event, Emitter<MessageState> emit) async {
    emit(MessageStateLoading());
    await Future.delayed(const Duration(seconds: 2));
    if (event.message.isEmpty) {
      emit(const MessageStateError('Message cannot be empty'));
    } else {
      emit(MessageStateSent(event.message));
    }
  }
}
