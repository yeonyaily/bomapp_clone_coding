import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button.dart';

drawer(BuildContext context) {
  bool ishover = false;
  return Container(
    width: 400,
    color: Colors.black,
    child: Drawer(

      child: ListView(
        padding: EdgeInsets.only(left: 75),
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            height: 140,
            child: Padding(
              padding: const EdgeInsets.only(top: 42, right: 35),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: AnimatedIconButton(
                  size: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  duration: const Duration(milliseconds: 0),
                  splashColor: Colors.transparent,
                  icons: const <AnimatedIconItem>[
                    AnimatedIconItem(
                      icon: Icon(Icons.clear, color: Colors.white),
                    ),
                    AnimatedIconItem(
                      icon: Icon(Icons.menu, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          drawerItem("서비스 소개"),
          drawerItem("회사 소개"),
          drawerItem("신용정보원 안내"),
          drawerItem("공동인증서 복사"),
          drawerItem("보맵파트너"),
          drawerItem("채용"),
          SizedBox(
            height: 25,
          ),
          Text(
            'Digital\nInsurance\nPlatform\nㅡ',
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.w600),
          ),

          // ------------------------------------------------------------------------------------
          Row(
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered))
                        return Colors.white;
                      return Colors.grey;
                    },
                  ),
                ),
                onPressed: () {},
                child: Icon(
                  Icons.keyboard_arrow_up, size: 40,
                ),
              ),
              IconButton(
                  onPressed: (){},
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                    child: Image.asset(
                      'assets/instagram.png',
                      scale: 1,
                    ),
                  )
              ),
              IconButton(
                  onPressed: (){},
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                    child: Image.asset(
                      'assets/apple.png',
                      scale: 1,
                    ),
                  )
              )


              /*
              GetBuilder<CounterController>(
                init: CounterController(),
                builder: (_) => Text(
                  'clicks: ${_.count}',
                  style: TextStyle(color: Colors.white),
                )
              ),

              // isHover : false or true?
              GetBuilder<HoverController>(
                init: HoverController(),
                builder: (_) => Text(
                  _.isHover.toString(),
                  style: TextStyle(color: Colors.white),
                ),
              ),

               */

              /*
              GetBuilder<HoverController>(
                init: HoverController(),
                builder: (_) => InkWell(
                  onTap: (){},
                  onHover: (hovering) {
                    print(hovering);
                    (hovering)
                      ? _.isHover.value = hovering
                        : _.isHover.value = false;

                    //_.isHover.value = hovering;
                  },
                  child: (_.isHover.value)
                    ? IconButton(
                    onPressed: (){},
                    icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
                      child: Image.asset(
                        'assets/instagram.png',
                        scale: 1,
                      ),
                    )
                  ) : IconButton(
                      onPressed: (){},
                      icon: ColorFiltered(
                        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        child: Image.asset(
                          'assets/instagram.png',
                          scale: 1,
                        ),
                      )
                  )
                )
              ),


               */


            ],
          ),
        ],
      ),
    ),
  );
}

class HoverController extends GetxController{
  RxBool isHover = false.obs;

  void hover() {
    isHover.toggle();
  }

}
class CounterController extends GetxController{
  RxInt count=0.obs;
  void increment(){
    count++;
  }
}