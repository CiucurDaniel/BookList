part of 'home_bottom_navigation_cubit.dart';

enum Page { books, stats }

class HomeBottomNavigationState extends Equatable {
  const HomeBottomNavigationState({
    this.currentTab = Page.books,
  });

  final Page currentTab;

  @override
  List<Object> get props => [currentTab];
}