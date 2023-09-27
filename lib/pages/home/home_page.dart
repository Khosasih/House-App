import 'package:flutter/material.dart';
import 'package:house_app/pages/favorite/favorite_page.dart';
import 'package:house_app/pages/history/history_page.dart';
import 'package:house_app/pages/home/dashboard_page.dart';
import 'package:house_app/pages/message/message.dart';
import 'package:house_app/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const DashboardPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: edge),
        child: Container(
          height: 65,
          width: MediaQuery.of(context).size.width - (2 * edge),
          margin: EdgeInsets.symmetric(horizontal: edge),
          decoration: BoxDecoration(
            color: const Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const DashboardPage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Image.asset('assets/images/icon/icon_home.png',
                              width: 26,
                              color: currentTab == 0 ? purpleColor : greyColor),
                          const Spacer(),
                          currentTab == 0
                              ? Container(
                                  height: 3,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: purpleColor,
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(1000),
                                    ),
                                  ),
                                )
                              : Container(),
                        ]),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const MessagePage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Image.asset('assets/images/icon/icon_mail.png',
                              width: 26,
                              color: currentTab == 1 ? purpleColor : greyColor),
                          const Spacer(),
                          currentTab == 1
                              ? Container(
                                  height: 3,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: purpleColor,
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(1000),
                                    ),
                                  ),
                                )
                              : Container(),
                        ]),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const HistoryPage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Image.asset('assets/images/icon/icon_card.png',
                              width: 26,
                              color: currentTab == 2 ? purpleColor : greyColor),
                          const Spacer(),
                          currentTab == 2
                              ? Container(
                                  height: 3,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: purpleColor,
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(1000),
                                    ),
                                  ),
                                )
                              : Container(),
                        ]),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = const FavoritePage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(),
                          Image.asset('assets/images/icon/icon_favorite.png',
                              width: 26,
                              color: currentTab == 3 ? purpleColor : greyColor),
                          const Spacer(),
                          currentTab == 3
                              ? Container(
                                  height: 3,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: purpleColor,
                                    borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(1000),
                                    ),
                                  ),
                                )
                              : Container(),
                        ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
