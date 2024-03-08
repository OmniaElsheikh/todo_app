import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:provider/provider.dart';
import 'package:to_do_appp/features/settings_provider.dart';
import 'package:to_do_appp/features/tasks/widgets/task_item_widget.dart';
class TasksView extends StatefulWidget {

   TasksView({Key? key}) : super(key: key);

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  DateTime focusTime =DateTime.now();

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.of(context).size;
    var theme=Theme.of(context);
    var vm =Provider.of<SettingsProvider>(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Stack(
            alignment: Alignment(0,3.3),
            clipBehavior: Clip.none,
            children: [
              Container(
                width: mediaQuery.width,
                height: mediaQuery.height*0.2,
                color: theme.primaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal:12.0,
                  vertical: 60,
                ),
                child :Text("ToDo List",
                style: theme.textTheme.titleLarge?.copyWith(color:vm.isDark()?Colors.black:Colors.white)),

              ),
              EasyInfiniteDateTimeLine(
                  firstDate: DateTime(2023),
                  focusDate: focusTime,
                  lastDate: DateTime(2025),
                  timeLineProps: EasyTimeLineProps(separatorPadding: 20),
                  showTimelineHeader: false,
                  dayProps: EasyDayProps(
                    activeDayStyle: DayStyle(
                      dayNumStyle: theme.textTheme.bodyMedium?.copyWith(color:theme.primaryColor),
                        dayStrStyle: theme.textTheme.bodySmall?.copyWith(color:theme.primaryColor),
                        monthStrStyle: theme.textTheme.bodySmall?.copyWith(color:theme.primaryColor),
                      decoration: BoxDecoration(
                        color:vm.isDark()?Color(0xFF141922):Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color:vm.isDark()?Color(0xFF141922):Colors.white,
                        ),

                      ),
                  ),
                    inactiveDayStyle: DayStyle(
                      dayNumStyle: theme.textTheme.bodyMedium?.copyWith(color:vm.isDark()?Colors.white:Color(0xFF363636)),
                      dayStrStyle: theme.textTheme.bodySmall?.copyWith(color:vm.isDark()?Colors.white:Color(0xFF363636)),
                      monthStrStyle: theme.textTheme.bodySmall?.copyWith(color:vm.isDark()?Colors.white:Color(0xFF363636)),
                      decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                        color:vm.isDark()?Color(0xFF141922):Colors.white,


                      ),
                  ),
                    height: 100,
                  ),
                  onDateChange: (selectedDate) {
                    setState(() {
                      focusTime = selectedDate;
                    }
                    );
                 },
                ),
            ],

          ),
        ),
        Expanded(
            child: ListView(
              children: [
                TaskItemWidget(),
                TaskItemWidget(),
                TaskItemWidget(),
                TaskItemWidget(),
                TaskItemWidget(),
                TaskItemWidget(),
                TaskItemWidget(),
                TaskItemWidget(),


              ],
            )
        ),
      ],
    );
  }
}
