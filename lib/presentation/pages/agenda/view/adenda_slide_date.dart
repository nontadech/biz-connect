import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AdendaSlideDate extends StatelessWidget {
  final List<SessionData>? agendaList;
  final Function(int seesion) onSelectSession;
  final int selectSession;

  const AdendaSlideDate({
    super.key,
    required this.agendaList,
    required this.onSelectSession,
    this.selectSession = 0
  });


  Widget getCardWidgets(BuildContext context){
    List<Widget> widgetList = [];
    for(var i = 0; i < agendaList!.length; i++){
      widgetList.add(
        TitleCustom(
          title: agendaList![i].session_title_date!,
          isActive: i == selectSession ? true : false,
          onTap: (){
            onSelectSession(i);
          }
        )
      );
    }
    return Row(
      children: widgetList
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: getCardWidgets(context)
    );
  }
}