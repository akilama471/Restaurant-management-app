import 'package:colombo_pitza/components/dls_actionbtn.dart';
import 'package:colombo_pitza/components/dls_customappbar.dart';
import 'package:colombo_pitza/components/dls_textfield.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  static const String routeName = '/profile';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const ProfileView());
  }

  const ProfileView({
    Key? key,
  }) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Your Orders hear...'),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('ID 14590'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Deliverd'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
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
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('ID 14790'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Order Cancelled'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
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
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('ID 14890'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Deliverd'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
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
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('ID 14990'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Wariyapola Btanch'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Cannceld'),
                              ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          children: [
                            const Divider(
                              thickness: 1,
                            ),
                            Row(
                              children: const [
                                Expanded(child: Icon(Icons.home)),
                                Expanded(child: Text('Home Address')),
                                Expanded(child: Icon(Icons.edit)),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const Text('No 35,'),
                            const Text('Pola Para,'),
                            const Text('Maspotha.'),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          children: [
                            const Divider(
                              thickness: 1,
                            ),
                            Row(
                              children: const [
                                Expanded(child: Icon(Icons.home)),
                                Expanded(child: Text('Home Address')),
                                Expanded(child: Icon(Icons.edit)),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const Text('Palliya Asala,'),
                            const Text('Pallandeniya.'),
                          ],
                        )),
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          children: [
                            const Divider(
                              thickness: 1,
                            ),
                            Row(
                              children: const [
                                Expanded(child: Icon(Icons.work)),
                                Expanded(child: Text('Work Address')),
                                Expanded(child: Icon(Icons.edit)),
                              ],
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            const Text('No 65,'),
                            const Text('First Floor,'),
                            const Text('New Shopping Mall,'),
                            const Text('Pallandeniya'),
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
