import 'package:ayurveda/UI/screens/home_screen.dart';
import 'package:ayurveda/core/view_model/fetchBranchList/fetch_branch_list_bloc.dart';
import 'package:ayurveda/core/view_model/fetchPatientList/fetch_patient_list_bloc.dart';
import 'package:ayurveda/core/view_model/fetchTreatmentList/fetch_treatment_list_bloc.dart';
import 'package:ayurveda/core/view_model/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        ),
        BlocProvider(
          create: (context) => FetchBranchListBloc(),
        ),
        BlocProvider(
          create: (context) => FetchPatientListBloc(),
        ),
        BlocProvider(
          create: (context) => FetchTreatmentListBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
