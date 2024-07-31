import 'package:biz_connect/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PrivateEventForm extends StatefulWidget {
  const PrivateEventForm({super.key});

  @override
  PrivateEventFormState createState() => PrivateEventFormState();
}

class PrivateEventFormState extends State<PrivateEventForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormFieldCustom(
            context,
            autofocus: true,
            hintText: 'Enter code',
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButtonCustom(
            text: 'Submit',
            onPressed: () {
   
            }
          ),
          const SizedBox(
            height: 15.0,
          ),
          ElevatedButtonOutlineBorder(
            text: 'Close',
            onPressed: () {
   
            }
          ),
        ],
      )
    );
  }
}