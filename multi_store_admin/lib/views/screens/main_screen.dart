import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/dasboard_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}





class _MainScreenState extends State<MainScreen> {

  Widget _selectedScreen = DashboardScreen();

  screenSelector(item){

    switch(item.route){
      case DashboardScreen.routeName:
        setState(() {
          _selectedScreen = DashboardScreen();
        });

        break;

      case VendrosScreen.routeName:
        setState(() {
          _selectedScreen = VendrosScreen();
        });
        break;

      case ProductsScreen.routeName:
        setState(() {
          _selectedScreen = ProductsScreen();
        });
        break;

      case WithdrawalScreen.routeName:
        setState(() {
          _selectedScreen = WithdrawalScreen();
        });
        break;

      case OrdersScreen.routeName:
        setState(() {
          _selectedScreen = OrdersScreen();
        });
        break;

      case CategoriesScreen.routeName:
        setState(() {
          _selectedScreen = CategoriesScreen();
        });
        break;

      case UploadBannerScreen.routeName:
        setState(() {
          _selectedScreen = UploadBannerScreen();
        });
        break;




    }

  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Multi Store Admin"),
        backgroundColor: Colors.green.shade400,
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: DashboardScreen.routeName,
            icon: Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Vendors',
            route: VendrosScreen.routeName,
            icon: CupertinoIcons.person_3,
          ),
          AdminMenuItem(
            title: 'Withdrawal',
            route: WithdrawalScreen.routeName,
            icon: CupertinoIcons.money_dollar,
          ),
          AdminMenuItem(
            title: 'Orders',
            route: OrdersScreen.routeName,
            icon: CupertinoIcons.shopping_cart,
          ),
          AdminMenuItem(
            title: 'Categories',
            route: CategoriesScreen.routeName,
            icon: Icons.category,
          ),
          AdminMenuItem(
            title: 'Products',
            route: ProductsScreen.routeName,
            icon: Icons.shopping_cart,
          ),
          AdminMenuItem(
            title: 'Upload Banner',
            route: UploadBannerScreen.routeName,
            icon: Icons.upload,
          ),
        ],
        selectedRoute: "",
        onSelected: (item) {
          screenSelector(item);
        },

        header: Container(
          height: 50,
          width: double.infinity,
          color: Colors.green.shade900,
          child: const Center(
            child: Text(
              'Multi Store Admin',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),


      ),

      body: _selectedScreen,

    );
  }
}
