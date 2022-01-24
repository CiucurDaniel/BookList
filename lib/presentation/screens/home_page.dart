import 'package:book_list/cubits/home_bottom_navigation_cubit.dart';
import 'package:book_list/presentation/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBottomNavigationCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedTab = context.select(
      (HomeBottomNavigationCubit cubit) => cubit.state.currentTab,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book list'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: selectedTab.index,
          children: const <Widget>[
            BookList(),
            ReadingStats(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () => context
                      .read<HomeBottomNavigationCubit>()
                      .setTab(HomeTab.books),
                  icon: const Icon(Icons.home),
                ),
                const Text('Home'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () => context
                      .read<HomeBottomNavigationCubit>()
                      .setTab(HomeTab.stats),
                  icon: const Icon(Icons.show_chart_rounded),
                ),
                const Text('Stats'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
