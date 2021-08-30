import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:nomin/constants/page_you_on.dart';
import 'package:nomin/views/components/common/button/build_float_action_buttons.dart';
import 'package:nomin/views/components/common/list/build_list.dart';

class AmountSelectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amount List'),
      ),
      body: BuildList(PageYouOn.amount),
      floatingActionButton: BuildFloatActionButtons(PageYouOn.amount),
    );
  }
}
