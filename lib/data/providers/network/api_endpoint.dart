import 'package:flutter_dotenv/flutter_dotenv.dart';
class APIEndpoint {
  static String get api => '${dotenv.get('BASE_URL')}/api/v1/attendee';
}
