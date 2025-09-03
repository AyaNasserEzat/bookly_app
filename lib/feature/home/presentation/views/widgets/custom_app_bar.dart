import 'package:bookly/feature/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  12.0),
      child: Row(
        children: [
          Image.asset("assets/images/Logo.png", height: 70, width: 70),
          Spacer(),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return SearchView();
              }));
            },
            icon: Icon(Icons.search)
            ),
        ],
      ),
    );
  }
}
