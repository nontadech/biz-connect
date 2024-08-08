import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/text.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class AppBarAgenda extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<String>? roomList;
  final BuildContext context;
  final Function(String room) onSelectRoom;
  const AppBarAgenda(
    this.context,
  {
    super.key, 
    required this.title,
    this.roomList,
    required this.onSelectRoom
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      toolbarHeight: 50,
      titleSpacing: 0,
      leading: IconButton(
        color: Colors.black, 
        onPressed: () => context.pop(),
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
        )
        
      ), 
      title: TextCustom(
        text: title,
        color: Colors.white,
        fontSize: FontSize.h5,
        fontWeight: FontWeight.w500,
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          gradient: LinearGradient(
            begin: Alignment.centerLeft, // Start direction
            end: Alignment.centerRight, // End direction
            colors: [
              Color(0xff0081DC),
              Color(0xff60D0FA),
              Color(0xff60D0FA),
            ], // Customize your colors here
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0)
                ),
              ),
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
              child: DropdownButtonFormField<String>(
                icon: SvgPicture.asset(
                  'assets/icons/arrow_down.svg',
                  width: 20,
                  height: 20,
                ),
                isDense: true,
                isExpanded: true,
                hint: TextCustom(
                  overflow: TextOverflow.visible,
                  text: 'Choose where you want to display the Agenda', 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400, 
                  color: const Color(0xff6481A9),
                  height: 1,
                ),
                style: TextStyle(
                  fontSize: FontSize.h9, 
                  color: const Color(0xff122D58),
                  fontWeight: FontWeight.w400,
                  fontFamily: 'FC_Iconic',
                ),
                // value: selectRoom.value,
                onChanged: (String? room) {
                  if(room != null){
                    onSelectRoom(room);
                  }
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.white
                    ),
                  ), focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Colors.white
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                items: roomList != null ? roomList!
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: TextCustom(
                      overflow: TextOverflow.visible,
                      text: value, 
                      fontSize: FontSize.h9, 
                      fontWeight: FontWeight.w400, 
                      color: const Color(0xff6481A9),
                      height: 1,
                    ),
                  );
                }).toList() : [],
              ),
            ),
           
            // const DropdownButtonFormFieldCustom(
            //   text: 'Choose where you want to display the agenda'
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(180); 
}