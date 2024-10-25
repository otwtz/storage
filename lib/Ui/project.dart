import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage/Pages/fifth_page.dart';
import 'package:storage/Pages/first_page.dart';
import 'package:storage/Pages/fourth_page.dart';
import 'package:storage/Pages/second_page.dart';
import 'package:storage/Pages/third_page.dart';

import '../navigation_BLoC/nav_bloc.dart';
import '../navigation_BLoC/nav_state.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        if (state is NavigateToScreenA) {
          return const FirstPage();
        } else if (state is NavigateToScreenB) {
          return const SecondPage();
        }
        else if (state is NavigateToScreenC) {
          return const ThirdPage();
        }
        // else if (state is NavigateToScreenD) {
        //   return const FourthPage();
        // }
        // else if (state is NavigateToScreenF) {
        //   return const FifthPage();
        // }
        return const Center(
          child: Text('error'),
        );
      },
    );
  }
}