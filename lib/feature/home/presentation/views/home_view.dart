import 'package:bookly/feature/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Scaffold(
        body: 
        HomeViewBody(),
      ),
    );
  }
}
