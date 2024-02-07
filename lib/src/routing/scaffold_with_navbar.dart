import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ScaffoldWithNestedNavigation extends ConsumerWidget {
  const ScaffoldWithNestedNavigation({Key? key, required this.navigationShell})
      : super(key: key);

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    // navigationShell.goBranch(index,
    //     // A common pattern when using bottom navigation bars is to support
    //     // navigating to the initial location when tapping the item that is
    //     // already active. This example demonstrates how to support this behavior,
    //     // using the initialLocation parameter of goBranch.
    //     // initialLocation: index == navigationShell.currentIndex
    //     initialLocation: index == navigationShell.currentIndex);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScaffoldWithNavigationBar(
        body: navigationShell,
        currentIndex: navigationShell.currentIndex,
        onDestinationSelected: _goBranch);
  }
}

class ScaffoldWithNavigationBar extends ConsumerWidget {
  const ScaffoldWithNavigationBar(
      {Key? key,
      required this.body,
      required this.currentIndex,
      required this.onDestinationSelected})
      : super(key: key);

  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: body,
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home')
          ],
          onDestinationSelected: onDestinationSelected),
    );
  }
}
