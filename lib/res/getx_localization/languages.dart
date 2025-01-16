import 'package:get/get_navigation/src/root/internacionalization.dart';
import 'package:master_class/res/components/internet_exceptions_widget.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'email_hint': 'Enter email',
          'internet_exception':
              "We're unable to show result.\nPlease check your data\nconnection ",
              'generala_exception': "We're uablle to process your request.\n Please try again"
        },
        'ta_SL': {'email_ hint': 'உள்ளிடவும்'},
      };
}
