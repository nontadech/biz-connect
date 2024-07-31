import 'package:biz_connect/app/config/themes/theme.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ChatBox extends StatefulWidget {
  final String name;
  final String avatar;
  final String msg;

  const ChatBox({
    super.key,
    required this.name,
    required this.msg,
    this.avatar = '',
  });

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  @override
  void initState() {
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 48,
          height: 48,
          child: PictureAccount(
            avatar: widget.avatar,
          ),
        ),
        const SizedBox(width: 15),
        Flexible(child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: widget.name, 
                fontSize: FontSize.h7, 
                fontWeight: FontWeight.w500, 
                color: const Color(0xff13315F),
                height: 1.2,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(23),
                    bottomLeft: Radius.circular(23),
                    bottomRight: Radius.circular(23),
                  ),
                ),
                child: TextCustom(
                  text: widget.msg, 
                  fontSize: FontSize.h9, 
                  fontWeight: FontWeight.w400, 
                  color: const Color(0xff13315F),
                  height: 1.2,
                ),
              )
            ],
          )
        )
      ],
    );
  }
}
