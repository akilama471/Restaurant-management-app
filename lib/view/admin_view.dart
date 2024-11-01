import 'package:restaurant_manager/components/dls_actionbtn.dart';
import 'package:restaurant_manager/components/dls_adminproduct.dart';
import 'package:restaurant_manager/components/dls_customappbar.dart';
import 'package:restaurant_manager/components/dls_textfield.dart';
import 'package:restaurant_manager/model/product_model.dart';
import 'package:flutter/material.dart';

class AdminView extends StatelessWidget {
  static const String routeName = '/admin';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (context) => const AdminView());
  }

  const AdminView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: CustomAppBar(
            appbarHeight: 100,
            title: "Admin",
            bottomBar: const TabBar(tabs: [
              Tab(text: "Products"),
              Tab(
                text: "Orders",
              ),
              Tab(
                text: 'Staff',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    AdminProductCard(
                      product: ProductModel.products[0],
                      count: '2',
                    ),
                    AdminProductCard(
                      product: ProductModel.products[4],
                      count: '4',
                    ),
                    AdminProductCard(
                      product: ProductModel.products[5],
                      count: '1',
                    ),
                    AdminProductCard(
                      product: ProductModel.products[2],
                      count: '3',
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const Text('Add New Product'),
                    const Divider(
                      thickness: 2,
                    ),
                    const DlsTextfield(
                        title: 'Product Name',
                        hint: 'Product Name',
                        icon: Icons.text_fields,
                        type: TextInputType.name,
                        isMask: false),
                    const DlsTextfield(
                        title: 'Product Price',
                        hint: 'Product Price',
                        icon: Icons.currency_pound,
                        type: TextInputType.name,
                        isMask: false),
                    const DlsTextfield(
                        title: 'Product Category',
                        hint: 'Product Category',
                        icon: Icons.text_fields,
                        type: TextInputType.name,
                        isMask: false),
                    DlsActionbtn(title: "Add Product", onPressAction: () {})
                  ]),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [],
                ),
              )
            ],
          )),
    );
  }
}
