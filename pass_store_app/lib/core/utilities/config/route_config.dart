import 'package:flutter/widgets.dart';

import '../../../features/passwords/ui/create_password_ui.dart';
import '../../../features/passwords/ui/passwords_list_ui.dart';

Map<String, Widget Function(BuildContext)> getAppRoutes(BuildContext context) => {
  '/home': (context) => const PasswordsListUI(),
  '/create': (context) => const CreatePasswordUI(),
};