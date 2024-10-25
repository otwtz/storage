import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage/storage_BLoC/storage_bloc.dart';

import 'Pages/first_page.dart';
import 'Ui/project.dart';
import 'navigation_BLoC/nav_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => NavigationBloc()),
          BlocProvider(create: (context) => DocumentBloc()),
        ],
        child: FirstPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
