import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nomin/constants/page_you_on.dart';
import 'package:nomin/views/components/common/button/build_float_action_buttons.dart';
import 'package:nomin/views/components/common/list/build_list.dart';

class AlcoholSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alcohol List'),
      ),
      body: BuildList(PageYouOn.alcohol),
      floatingActionButton: BuildFloatActionButtons(PageYouOn.alcohol),
    );
  }
}
