import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/controller/talapat_cubit/talapat_cubit.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class CounterOrderDetails extends StatelessWidget {
  const CounterOrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalTalapatCubit, GlobalTalapatStates>(
      builder: (context, state) {
        GlobalTalapatCubit cubit = GlobalTalapatCubit.get(context);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    cubit.incrementNumberOrder();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    minimumSize: const Size(40.0, 40.0),
                    backgroundColor: const Color(0xFFF2F2F2),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Color(0xFFE60023),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    cubit.numberOfOrderItem.toString(),
                    style: StyleManager.titleStyle14.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    cubit.decrementNumberOrder();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    minimumSize: const Size(40.0, 40.0),
                    backgroundColor: const Color(0xFFF2F2F2),
                  ),
                  child: Icon(
                    cubit.numberOfOrderItem == 0
                        ? Icons.delete_outline
                        : Icons.remove,
                    color: const Color(0xFFE60023),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: (95.00 * cubit.numberOfOrderItem).toString(),
                      style: StyleManager.titleStyle14.copyWith(
                        color: const Color(0xFF333333),
                      ),
                    ),
                    const TextSpan(
                      text: ' ر.س',
                      style: StyleManager.titleStyle10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
