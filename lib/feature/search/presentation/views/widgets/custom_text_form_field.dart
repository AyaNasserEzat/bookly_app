
import 'package:bookly/feature/search/presentation/view_model/cubits/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.search,color: Colors.white,),
          hintText: 'search',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
          )
        ),
        onChanged: (value) {
          BlocProvider.of<SearchCubit>(
            context,
          ).searchByName(name: value);
        },
      ),
    );
  }
}
