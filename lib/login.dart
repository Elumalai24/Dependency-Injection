import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_with_di/bloc/auth_bloc.dart';
import 'package:bloc_with_di/bloc/auth_event.dart';
import 'package:bloc_with_di/bloc/auth_state.dart';
import 'package:bloc_with_di/util/service_locator.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: BlocProvider(
        // Creating the AuthBloc instance using GetIt
        create: (_) => getIt<AuthBloc>(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // BlocBuilder to rebuild UI based on state changes
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  if (state is AuthLoading) {
                    return const CircularProgressIndicator();
                  } else if (state is AuthSuccess) {
                    return const Text("Login Successful!");
                  } else if (state is AuthFailure) {
                    return Text("Error: ${state.error}");
                  }
                  return const Text("Please login");
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Adding a LoginEvent to the AuthBloc
                  context.read<AuthBloc>().add(
                    LoginEvent("admin", "admin"),
                  );
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
