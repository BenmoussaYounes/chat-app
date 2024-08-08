import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/bloc/chat_bloc.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key, required this.selectedIndex});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      destinations: const [
        NavigationDestination(icon: Icon(Icons.person), label: 'Younes'),
        NavigationDestination(icon: Icon(Icons.person_4_rounded), label: 'Ali'),
      ],
      onDestinationSelected: (pageIndex) =>
          context.read<ChatBloc>().add(ChatEvent.changeSelectedPage(pageIndex)),
    );
  }
}
