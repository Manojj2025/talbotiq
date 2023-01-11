import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/appbar.dart';

class MoreView extends GetView {
  const MoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: myappbar(),
        body: Center(
          child: Text(
            'MoreView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
