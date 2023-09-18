import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../features/app/presentation/bloc/app_manager_cubit.dart';
import '../features/auth/presentation/auth_bloc/auth_bloc.dart';
import '../features/product/presentation/bloc/product_bloc.dart';

class ServiceProvider extends StatelessWidget {
  const ServiceProvider({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.I<AppManagerCubit>()),
        BlocProvider(create: (_) => GetIt.I<AuthBloc>()),
        // BlocProvider(create: (_) => GetIt.I<ProfileBloc>()),
        // BlocProvider(create: (_) => GetIt.I<OrderBloc>()),
        BlocProvider(create: (_) => GetIt.I<ProductBloc>()),
      ],
      child: child,
    );
  }

  final Widget child;
}
