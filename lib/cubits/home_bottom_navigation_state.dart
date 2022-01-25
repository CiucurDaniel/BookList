part of 'home_bottom_navigation_cubit.dart';

enum HomeTab { books, stats }

class HomeBottomNavigationState extends Equatable {
  const HomeBottomNavigationState({
    this.currentTab = HomeTab.books,
  });

  final HomeTab currentTab;

  @override
  List<Object> get props => [currentTab];
}
