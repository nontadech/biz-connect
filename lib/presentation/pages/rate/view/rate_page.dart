import 'package:biz_connect/presentation/pages/rate/view/rate_form.dart';
import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
class RatePage extends StatefulWidget {
  const RatePage({super.key});

  @override
  State<RatePage> createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
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
        title: 'Session Rating',
        type: AppBarType.back,
      ),
      body: const RateForm(),
    );
  }
}
