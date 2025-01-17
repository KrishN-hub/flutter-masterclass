import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Email',
          'internet_exception':
              "We're unable to show result.\nPlease check your data\nconnection ",
          'generala_exception':
              "We're uablle to process your request.\n Please try again",
          'welcome_back': "Welcome\nBack",
          'login': 'Login',
          'password_hint': 'Password',
        },
        'ta_SL': {'email_ hint': 'உள்ளிடவும்'},
      };
}
