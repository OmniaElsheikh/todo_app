import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:to_do_appp/features/settings/pages/settings_view.dart';
import 'package:to_do_appp/features/tasks/pages/tasks_view.dart';
import 'features/settings_provider.dart';
class LayoutView extends StatelessWidget {
  static const String routName="layout";

   LayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var local =AppLocalizations.of(context)!;
    var vm =Provider.of<SettingsProvider>(context);
    return Scaffold(
      extendBody: true,
      body: vm.screens[vm.currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add,
          size: 32,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
      shape: const CircularNotchedRectangle(),
        notchMargin: 10,
      child: BottomNavigationBar(
        currentIndex: vm.currentIndex,
       onTap: vm.changeIndex,
       // onTap: vm.currentIndex,

        items:[
         BottomNavigationBarItem(
          icon: Icon(Icons.list),
             label:local.list
             //AppLocalizations.of(context).list
         ) ,
          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
             label:local.settings,


)
      ],
      ),
    )

    );
  }
}
