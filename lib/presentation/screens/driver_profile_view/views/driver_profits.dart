import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/styles.dart';

import '../../../../utils/routes.dart';

class DriverProfitsScreen extends StatefulWidget {
  const DriverProfitsScreen({Key? key}) : super(key: key);

  @override
  State<DriverProfitsScreen> createState() => _DriverProfitsScreenState();
}

class _DriverProfitsScreenState extends State<DriverProfitsScreen>
    with SingleTickerProviderStateMixin {
  int pIndex = 0;
  TabController? _tabController;
  final PageController _pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text("الأرباح"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 24.0),
                    decoration: BoxDecoration(
                      color: const Color(0x7FFDE6E9),
                      borderRadius: BorderRadius.circular(46.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'رصيد الحساب',
                          style: StyleManager.titleStyle10.copyWith(
                            color: const Color(0xFF333333),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          '1 ر.س',
                          style: StyleManager.titleStyle16.copyWith(
                            color: const Color(0xFFE60023),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TabBar(
                    onTap: (value) => _pageController.animateToPage(value,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeInOut),
                    labelPadding: const EdgeInsets.all(3),
                    indicatorColor: const Color(0xFFE60023),
                    controller: _tabController,
                    indicatorWeight: 2,
                    unselectedLabelColor: const Color(0xFF828282),
                    labelColor: const Color(0xFFE60023),
                    tabs: const [
                      Tab(
                        child: Text(
                          'تحت التنفيذ',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Tab(
                        child: Text(
                          'مسددة',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: 2,
                onPageChanged: (index) {
                  _tabController!.animateTo(index);
                },
                itemBuilder: (context, index) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (index == 0) Image.asset("assets/images/money.png"),
                      if (index == 1) Image.asset("assets/images/talapat.png"),
                      const SizedBox(
                        height: 32.0,
                      ),
                      const Text(
                        'لا توجد لديك مدفوعات معلقة',
                        textAlign: TextAlign.center,
                        style: StyleManager.titleStyle14,
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      CustomButton(
                        press: () {
                          Navigator.pushNamed(
                              context, Routes.driverOrderRequestScreen);
                        },
                        widget: Text(
                          'تصفح طلبات الانتظار',
                          style: StyleManager.titleStyle12.copyWith(
                            color: const Color(0xFFFCFDFE),
                          ),
                        ),
                        bgColor: const Color(0xFFE60023),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
