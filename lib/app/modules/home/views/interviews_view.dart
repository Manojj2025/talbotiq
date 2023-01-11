import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/appbar.dart';

class InterviewsView extends GetView {
  const InterviewsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myappbar(),
        body: Center(
          child: Text(
            'InterviewsView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
