import 'package:ayurveda/core/view_model/fetchBranchList/fetch_branch_list_bloc.dart';
import 'package:ayurveda/core/view_model/fetchPatientList/fetch_patient_list_bloc.dart';
import 'package:ayurveda/core/view_model/fetchTreatmentList/fetch_treatment_list_bloc.dart';
import 'package:ayurveda/core/view_model/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            state.map(
              initial: (value) {
                print(value);
              },
              loading: (value) {
                print(value);
              },
              loginSuccess: (value) {
                print(value);
              },
              noInternet: (value) {
                print(value);
              },
              loginFailure: (value) {
                print(value);
              },
            );
          },
        ),
        BlocListener<FetchPatientListBloc, FetchPatientListState>(
          listener: (context, state) {
            state.map(
              initial: (value) {
                print(value);
              },
              loading: (value) {
                print(value);
              },
              FetchPatientListSuccess: (value) {
                print(value);
              },
              noInternet: (value) {
                print(value);
              },
              Failure: (value) {
                print(value);
              },
            );
          },
        ),
        BlocListener<FetchBranchListBloc, FetchBranchListState>(
          listener: (context, state) {
            state.map(
              initial: (value) {
                print(value);
              },
              loading: (value) {
                print(value);
              },
              FetchBranchLisSuccess: (value) {
                print(value);
              },
              noInternet: (value) {
                print(value);
              },
              Failure: (value) {
                print(value);
              },
            );
          },
        ),
        BlocListener<FetchTreatmentListBloc, FetchTreatmentListState>(
          listener: (context, state) {
            state.map(
              initial: (value) {
                print(value);
              },
              loading: (value) {
                print(value);
              },
              FetchTreatmentListSuccess: (value) {
                print(value);
              },
              noInternet: (value) {
                print(value);
              },
              Failure: (value) {
                print(value);
              },
            );
          },
        ),
      ],
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<LoginBloc>(context).add(
                      const LoginEvent.loginRequested(
                        username: 'test_user',
                        password: '12345678',
                      ),
                    );
                  },
                  child: const Text("Login"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<FetchPatientListBloc>(context).add(
                      const FetchPatientListEvent.fetchPatient(),
                    );
                  },
                  child: const Text("Get Patient List"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<FetchBranchListBloc>(context)
                        .add(const FetchBranchListEvent.fetchBranch());
                  },
                  child: const Text("Get Branch List"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<FetchTreatmentListBloc>(context)
                        .add(const FetchTreatmentListEvent.fetchTreatment());
                  },
                  child: const Text("Get Treatment List"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Spacer(),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//---------------