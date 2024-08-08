import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ZoneList extends StatefulWidget {
  const ZoneList({super.key});

  @override
  State<ZoneList> createState() => _ZoneListState();
}

class _ZoneListState extends State<ZoneList> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.44,
        mainAxisSpacing: 10,
        children: [
          Center(
            child: CardHorizontal(
              onTap: () {
                context.push('/join');
              },
            ),
          ),
          Center(
            child: CardHorizontal(
              onTap: () {
                context.push('/join');
              },
            ),
        ),
          Center(
            child: CardHorizontal(
              onTap: () {
                context.push('/my_ticket');
              },
            ),
          ),
          Center(
            child: CardHorizontal(
              onTap: () {
                context.push('/join');
              },
            ),
          ),
            Center(
            child: CardHorizontal(
              onTap: () {
                context.push('/join');
              },
            ),
          ),
          Center(
            child: CardHorizontal(
              onTap: () {
                context.push('/join');
              },
            ),
          ),
        ]
      ) 
    );
  }
}
