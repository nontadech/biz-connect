import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SupportedPage extends StatefulWidget {
  const SupportedPage({super.key});

  @override
  State<SupportedPage> createState() => _SupportedPageState();
}

class _SupportedPageState extends State<SupportedPage> {
  @override
  void initState() {
    // Initialize & inject UserController() using Get.put()
    super.initState();
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBarCustom(
        context,
        title: 'Supported',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only( top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Center(
            child: Wrap(
              alignment:WrapAlignment.spaceEvenly,
              children: [
              for (var i = 0; i < 6; i++)
                Container(
                  margin: const EdgeInsets.only(right: 10, left: 10, bottom: 15),
                  width: 103,
                  height: 103,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xffe5e5e5),
                      width: 1,
                    ),
                  ),
                  child: Center(
                      child:  Image.asset(
                      'assets/demo/supported.png',
                      width: 41,
                    ),
                  )
                )
              ]
            ),
          )
        ),
      )
    );
  }
}
