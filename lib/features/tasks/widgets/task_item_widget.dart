//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme=Theme.of(context);
    var mediaQuery=MediaQuery.of(context).size;
    var vm =Provider.of<SettingsProvider>(context);
    return Container(
          width: mediaQuery.width,
          height: 115,
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            color:vm.isDark()?Color(0xFF141922):Colors.white,

            borderRadius: BorderRadius.circular(15.5),
          ),
          child: Row(
            children: [
              Container(
              //  padding: EdgeInsets.symmetric(horizontal: 15),
                width: 6,
                height: 90,
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
              const SizedBox(width: 15,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Play basketball",
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.primaryColor,

                  ),),
                  const SizedBox(height: 15,),
                  Row(

                    children: [
                      Icon(Icons.alarm,size: 20,
                      color:vm.isDark()?Colors.white:Colors.black,),
                      SizedBox(width: 5,),
                      Text("10:30",
                        style: theme.textTheme.bodySmall?.copyWith(
                          color:vm.isDark()?Colors.white:Colors.black,
                          fontWeight: FontWeight.w500

                        ),),
                    ],
                  )
                ],
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                color: theme.primaryColor),
                child: Icon(Icons.check,
                color: Colors.white,
                size: 38,),
              )
            ],
          ),
        );


  }
}
