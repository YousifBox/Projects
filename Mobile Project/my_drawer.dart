import 'package:flutter/material.dart';
import 'package:food_delivery_app/Services/authentication/auth_service.dart';
import 'package:food_delivery_app/my_drawer_tile.dart';
import 'package:food_delivery_app/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  void logout()
  {
    final authService = AuthService();
    authService.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:100.0),
          child:  Icon(Icons.lock_clock_rounded,
            size:80,
          color: Theme.of(context).colorScheme.inversePrimary,
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color:Theme.of(context).colorScheme.secondary,
            ),
          ),
          MyDrawerTile(text: "H O M E", icon: Icons.home, onTap: ()=> Navigator.pop(context),),
          MyDrawerTile(text: "S E T T I N G S", icon: Icons.settings, onTap: (){
            Navigator.pop(context);
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const SettingsPage(),
            )
            );
          }),
          const Spacer(),
          MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: (){
            logout();
            Navigator.pop(context);

          }),
          const SizedBox(height: 25,),
        ],
      ),
    );
  }
}
