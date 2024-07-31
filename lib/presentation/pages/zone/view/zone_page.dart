import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ZonePage extends StatefulWidget {
  const ZonePage({super.key});

  @override
  State<ZonePage> createState() => _ZonePageState();
}

class _ZonePageState extends State<ZonePage> {
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
        title: 'Zone',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardZone(
                title: 'Blockchain 2024_1',
                onTap: () {
                  popupPicture(context);
                },
              ),
              const SizedBox(height: 10),
              CardZone(
                title: 'Blockchain 2024_2',
                onTap: () {
                  popupPicture(context);
                },
              ),
              const SizedBox(height: 10),
              CardZone(
                title: 'Blockchain 2024_3',
                onTap: () {
                  popupPicture(context);
                },
              ),
              const SizedBox(height: 10),
            ]
          ),
        ),
      )
    );
  }
}
