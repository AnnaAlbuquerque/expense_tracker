import 'package:flutter/material.dart';

enum Category {
  fixedExpenses,
  food,
  house,
  health,
  stream,
  leisure,
  personalExpenses,
  extras,
}

extension CategoryExtension on Category {
  IconData get icon {
    switch (this) {
      case Category.fixedExpenses:
        return Icons.account_balance_wallet_rounded;
      case Category.food:
        return Icons.lunch_dining_rounded;
      case Category.house:
        return Icons.house_rounded;
      case Category.health:
        return Icons.healing_rounded;
      case Category.stream:
        return Icons.movie_creation_rounded;
      case Category.leisure:
        return Icons.music_note_rounded;
      case Category.personalExpenses:
        return Icons.accessibility_new_rounded;
      case Category.extras:
        return Icons.more_horiz_rounded;
    }
  }
}
