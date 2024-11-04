import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pos/feature/bloc/order/order_bloc.dart';
import 'package:sample_pos/feature/di/service_locator.dart';
import 'package:sample_pos/feature/screen/table_service_screen.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<OrderBloc>()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        color: Colors.white,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TableServiceScreen(),
      ),
    );
  }
}
