import 'package:flutter/cupertino.dart';
import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    var local =AppLocalizations.of(context)!;
    var vm =Provider.of<SettingsProvider>(context);

    return Column(
        children: [
          Container(
            width: mediaQuery.width,
            height: mediaQuery.height*0.2,
            color: theme.primaryColor,
            padding: EdgeInsets.symmetric(
              horizontal:12.0,
              vertical: 60,
            ),
            child :Text("Settings",
                style: theme.textTheme.titleLarge?.copyWith(color:vm.isDark()?Colors.black:Colors.white)),

          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                Text(
                local.language,
                  style:theme.textTheme.bodySmall?.copyWith(color:vm.isDark()?Colors.white:Colors.black) ,
                ),
                const SizedBox(height: 10),
                CustomDropdown(items: vm.languageList,
                    initialItem: "English",
                  decoration:CustomDropdownDecoration(
                    closedBorder: Border.all(color: theme.primaryColor),
                    closedFillColor:vm.isDark()?const Color(0xFF141922):Colors.white,

                    closedSuffixIcon:Icon(Icons.keyboard_arrow_down_rounded,
                    color:vm.isDark()?const Color(0xFF141922):Colors.black,
                    ),
                    expandedFillColor:vm.isDark()?const Color(0xFF141922):Colors.white,
                    expandedSuffixIcon:Icon(Icons.keyboard_arrow_down_rounded,
                      color:vm.isDark()?Colors.black:const Color(0xFF141922),
                    ),
                  ),

                  onChanged:(value){}
                  //vm.changeLanguage(vm.currentLanguage),
                ),
                const SizedBox(height: 48),


                Text(
                    local.mode,
                  style:theme.textTheme.bodySmall?.copyWith(color:vm.isDark()?Colors.white:Colors.black) ,

                ),
                const SizedBox(height: 10),
                CustomDropdown(items: vm.themeModeList,
                  initialItem: "Light",
                  decoration:CustomDropdownDecoration(
                    closedBorder: Border.all(color: theme.primaryColor),
                    closedFillColor:vm.isDark()?const Color(0xFF141922):Colors.white,
                    closedSuffixIcon:Icon(Icons.keyboard_arrow_down_rounded,
                      color:vm.isDark()?const Color(0xFF141922):Colors.black,
                    ),
                    expandedFillColor:vm.isDark()?const Color(0xFF141922):Colors.white,
                    expandedSuffixIcon:Icon(Icons.keyboard_arrow_down_rounded,
                      color:vm.isDark()?Colors.black:const Color(0xFF141922),
                    ),
                  ),

                  onChanged:(value){}
                 // vm.changeTheme(vm.currentThemeMode)
                  ,
                ),
              ],
            ),
          ),
        ],

    );
  }
}
//
// CustomDropdown<String>(
// items: vm.languageList,
// initialItem: "English",
// onChanged: vm.currentLanguage),

