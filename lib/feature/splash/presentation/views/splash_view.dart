import 'package:bookly/feature/home/presentation/view_model/cubits/featur_books_cubit/featured_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
//BlocProvider.of<FeaturedBooksCubit>(context).fetechFeaturedBooks();
    super.initState();
    navigatTo();
  }

  void navigatTo() {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return HomeView();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/Logo.png", height: 100),
            Text('read free books'),
          ],
        ),
      ),
    );
  }
}
