
import 'package:flutter/cupertino.dart';

@immutable
sealed class NavBarState{}

final class NavBarInitial extends NavBarState{}

final class IndexChanged extends NavBarState{}
