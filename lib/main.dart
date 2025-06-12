import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:milliy_shifo/core/utils/app_colors.dart';
import 'package:milliy_shifo/core/utils/mediaquery_meneger.dart';
import 'package:milliy_shifo/features/products/presentation/bloc/user_bloc.dart';
import 'package:milliy_shifo/features/products/presentation/pages/splash/splash.dart';

import 'core/DI/service_locator.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(create: (_) => GetIt.instance<UserBloc>()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    MediaqueryMeneger.init(context);
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backColor),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
