import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/model/talapat_item_model.dart';
part 'talapat_state.dart';

class GlobalTalapatCubit extends Cubit<GlobalTalapatStates> {
  GlobalTalapatCubit() : super(TalapatInitial());

  static GlobalTalapatCubit get(context) => BlocProvider.of(context);

  int indexItem = 0;
  int numberOfOrderItem = 1;
  bool invoice = false;
  bool orderDetails = false;
  List<Item> items = [
    Item(text: "الكل", color: const Color(0xFF2F80ED)),
    Item(text: "متوجه للاستلام", color: const Color(0xFF27AE60)),
    Item(text: "تم الانتهاء", color: const Color(0xFF9B51E0)),
    Item(text: "ملغي", color: const Color(0xFFEB5757)),
  ];

  late Timer timer;
  int index = 0;

  changeTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (index < 4) {
        index++;
        emit(ChangeOrderProcessState());
      }
    });
  }

  void changeRowItems(index) {
    indexItem = index;
    emit(ChangeRowItemsState());
  }

  void incrementNumberOrder() {
    numberOfOrderItem++;
    emit(CounterIncrementState());
  }

  void decrementNumberOrder() {
    if (numberOfOrderItem > 0) {
      numberOfOrderItem--;
    }
    emit(CounterDecrementState());
  }

  void changeInvoice() {
    invoice = !invoice;
    emit(ChangeInvoiceState());
  }

  void changeOrderDetails() {
    orderDetails = !orderDetails;
    emit(ChangeOrderDetailsState());
  }
}
