import 'package:flutter/material.dart';
// import 'package:questionair_app/controllers/questionair_controller.dart';
// import 'package:questionair_app/models/questionair/questionair.dart';
// import 'package:flutter_state_notifier/flutter_state_notifier.dart';

// import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod/riverpod.dart';
import 'package:questionair_app/views/screens/q1.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'アンケートアプリ',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: StateNotifierProvider<QuestionairController, Questionair>(
      //   create: (_) => QuestionairController(),
      //   child: Q1(),
      // ),
      home: Q1(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('state_notifier sample'),
//       ),
//       body: Center(
//         child: Text(
//           context.select<Questionair, String>((state) => state.param),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: () => context.read<QuestionairController>().setParam('バスケ'),
//         label: Text('1'),
//         icon: Icon(Icons.add),
//       ),
//     );
//   }
// }
