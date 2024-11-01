import 'package:restaurant_manager/components/dls_actionbtn.dart';
import 'package:restaurant_manager/components/dls_customappbar.dart';
import 'package:restaurant_manager/components/dls_textfield.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  static const String routeName = '/profile';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const ProfileView());
  }

  const ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: CustomAppBar(
            appbarHeight: 100,
            title: "My Profile",
            bottomBar: const TabBar(tabs: [
              Tab(text: "My Orders"),
              Tab(
                text: "My Profile",
              ),
              Tab(
                text: 'Address Book',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Your Orders hear...'),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ID 14590'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Deliverd'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.done,
                                  color: Colors.green,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ID 14790'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Order Cancelled'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.wrong_location,
                                  color: Colors.red,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ID 14890'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Deliverd'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.done,
                                  color: Colors.green,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ID 14990'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Cannceld'),
                              ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.close,
                                  color: Colors.red,
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const DlsTextfield(
                        title: 'Your Name',
                        hint: 'Full Namr',
                        icon: Icons.person,
                        type: TextInputType.name,
                        isMask: false),
                    const DlsTextfield(
                        title: 'Mobile Number',
                        hint: 'Mobile Number',
                        icon: Icons.dialpad,
                        type: TextInputType.name,
                        isMask: false),
                    const SizedBox(
                      height: 50,
                    ),
                    const DlsTextfield(
                        title: 'Password',
                        hint: 'Password',
                        icon: Icons.lock,
                        type: TextInputType.name,
                        isMask: false),
                    const DlsTextfield(
                        title: 'Confirm Password',
                        hint: 'Confirm Password',
                        icon: Icons.lock,
                        type: TextInputType.name,
                        isMask: false),
                    DlsActionbtn(
                      title: 'Save Profile',
                      onPressAction: () {},
                      backColr: Colors.red,
                      foreColr: Colors.white,
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Column(
                          children: [
                            Divider(
                              thickness: 1,
                            ),
                            Row(
                              children: [
                                Expanded(child: Icon(Icons.home)),
                                Expanded(child: Text('Home Address')),
                                Expanded(child: Icon(Icons.edit)),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Text('No 35,'),
                            Text('Pola Para,'),
                            Text('Maspotha.'),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Column(
                          children: [
                            Divider(
                              thickness: 1,
                            ),
                            Row(
                              children: [
                                Expanded(child: Icon(Icons.home)),
                                Expanded(child: Text('Home Address')),
                                Expanded(child: Icon(Icons.edit)),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Text('Palliya Asala,'),
                            Text('Pallandeniya.'),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(bottom: 8),
                        child: Column(
                          children: [
                            Divider(
                              thickness: 1,
                            ),
                            Row(
                              children: [
                                Expanded(child: Icon(Icons.work)),
                                Expanded(child: Text('Work Address')),
                                Expanded(child: Icon(Icons.edit)),
                              ],
                            ),
                            Divider(
                              thickness: 1,
                            ),
                            Text('No 65,'),
                            Text('First Floor,'),
                            Text('New Shopping Mall,'),
                            Text('Pallandeniya'),
                          ],
                        ))
                  ],
                ),
              )
            ],
          )),
    );
  }
}
