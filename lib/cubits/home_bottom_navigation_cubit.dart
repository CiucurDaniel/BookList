import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_bottom_navigation_state.dart';

class HomeBottomNavigationCubit extends Cubit<HomeBottomNavigationState> {
  HomeBottomNavigationCubit() : super(const HomeBottomNavigationState());

  void setTab(Page tab) => emit(HomeBottomNavigationState(currentTab: tab));
}
