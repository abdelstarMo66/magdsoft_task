import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/controller/talapat_cubit/talapat_cubit.dart';
import 'package:task/presentation/screens/talapat_view/views/talapat_body.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';

class TalapatScreen extends StatelessWidget {
  const TalapatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GlobalTalapatCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'الطلبات',
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Icon(Icons.history),
            ),
          ],
          elevation: 0.0,
        ),
        body: BlocBuilder<GlobalTalapatCubit, GlobalTalapatStates>(
          builder: (context, state) {
            GlobalTalapatCubit cubit = GlobalTalapatCubit.get(context);
            return Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 64,
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding, vertical: 12.0),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => CustomTalapatButton(
                      text: cubit.items[index].text,
                      bgColor: index == cubit.indexItem
                          ? cubit.items[index].color
                          : const Color(0xFFF0F0F0),
                      textColor: index == cubit.indexItem
                          ? Colors.white
                          : const Color(0xFF333333),
                      press: () {
                        cubit.changeRowItems(index);
                      },
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 8.0,
                    ),
                    itemCount: cubit.items.length,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Expanded(
                  child: TalapatBody(index: cubit.indexItem),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
