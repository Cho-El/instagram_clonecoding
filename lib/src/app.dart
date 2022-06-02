import 'package:flutter/material.dart';
import 'package:instagram_clonecoding/src/components/image_data.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // 취소를 막는 기능
      child: Scaffold(
          appBar: AppBar(),
          body: Container(),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: ImageData('assets/images/add_friend_icon.jpg'),
              )
            ],
          ),
      ),
      onWillPop: () async {
        return false;
      },
    ); // onWillpop 뒤로가기 눌렀을 때 호출
  }
}