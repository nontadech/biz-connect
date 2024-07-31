import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DownloadsPage extends StatefulWidget {
  const DownloadsPage({super.key});

  @override
  State<DownloadsPage> createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
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
        title: 'Download',
        type: AppBarType.back,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardDownload(
                title: 'Blockchain 2024_1',
                size: 'Size: 3KB',
                onTap: () {
                  popupPicture(context);
                },
              ),
              const SizedBox(height: 10),
              CardDownload(
                title: 'Blockchain 2024_2',
                size: 'Size: 3KB',
                onTap: () {
                  popupPicture(context);
                },
              ),
              const SizedBox(height: 10),
              CardDownload(
                title: 'Blockchain 2024_3',
                size: 'Size: 3KB',
                onTap: () {
                  popupPicture(context);
                },
              ),
              const SizedBox(height: 20),
              ElevatedButtonCustom(
                text: 'SEND ALL  FILES TO YOUR EMAIL',
                onPressed: () {
                  // GoRouter.of(context).go('/sign_up');
                }
              ),
            ]
          ),
        ),
      )
    );
  }
}
