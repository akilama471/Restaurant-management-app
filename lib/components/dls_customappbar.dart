import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final double appbarHeight;
  final String title;
  final PreferredSizeWidget? bottomBar;

  CustomAppBar(
      {Key? key,
      required this.appbarHeight,
      required this.title,
      this.bottomBar})
      : super(key: key);

  //@override
  // Widget FocusMenuIcon(BuildContext context) => FocusedMenuHolder(
  // menuItems: const [

  // ],

//    blurBackgroundColor: Colors.blueGrey[900],
//    openWithTap: true,
  //   onPressed: () {},
//  )
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/admin',
                    );
                  },
                  child: const Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 40,
                  ),
                ),
                SizedBox(
                  width: 160,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/cart',
                    );
                  },
                  child: const SizedBox(
                    width: 40,
                    child: Icon(Icons.shopping_cart),
                  ),
                ),
                SizedBox(
                    width: 40,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/profile',
                        );
                      },
                      child: const Icon(Icons.person),
                    )),
                //FocusMenuIcon();
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
        bottom: bottomBar);
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appbarHeight);
}
