import 'package:alzefr/core/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import '../../../core/di/dependency_injection.dart';
import '../../notifications/present/bloc/notifications_bloc.dart';
import 'bloc/home_bloc.dart';
import 'widgets/body_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = "home";
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    getIt<HomeBloc>().add(HomeEvent.get());
    getIt<NotificationsBloc>().add(NotificationsEvent.watch());
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: false,
      backgroundColor: const Color(0xFFFFFFFF),
      body: BodyWidget(),
    );
  }
}
