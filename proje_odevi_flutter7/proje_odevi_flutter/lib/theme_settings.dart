import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/app_cubit.dart';

class ThemeSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tema Ayarları'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocProvider.of<AppCubit>(context).state.isDark ? Text("Koyu Tema",style: TextStyle(color: Colors.white),) : Text("Açık Tema" ,style: TextStyle(color: Colors.black),),
             Switch(
              value: BlocProvider.of<AppCubit>(context).state.isDark,
              onChanged: (value) {
                BlocProvider.of<AppCubit>(context).toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}
