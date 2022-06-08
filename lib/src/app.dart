import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clonecoding/src/components/image_data.dart';
import 'package:instagram_clonecoding/src/controller/bottom_nav_controller.dart';

class App extends GetView<BottomNavController> { // getview 안에 컨트롤러가 있음
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // 취소를 막는 기능
      child: Obx( // 감싸주어야 값이 전달된다.
        () => Scaffold(
          appBar: AppBar(),
          body: IndexedStack(
            index: controller.pageIndex.value,
            children: [
              Container(child: Center(child: Text('Home'))),
              Container(child: Center(child: Text('Search'))),
              Container(child: Center(child: Text('Upload'))),
              Container(child: Center(child: Text('Acting'))),
              Container(child: Center(child: Text('Mypage'))),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: controller.pageIndex.value,
            elevation: 0,
            onTap: controller.changeBottomNav,
            items: [
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.homeOff),
                activeIcon: ImageData(IconsPath.homeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.searchOff),
                activeIcon: ImageData(IconsPath.searchOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.uploadIcon),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: ImageData(IconsPath.activeOff),
                activeIcon: ImageData(IconsPath.activeOn),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                    )),
                label: 'home',
              )
            ],
          ),
        ),
      ),
      onWillPop: controller.willPopAction
    ); // onWillpop 뒤로가기 눌렀을 때 호출
  }
}
