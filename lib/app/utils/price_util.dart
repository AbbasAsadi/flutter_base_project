import 'package:intl/intl.dart';

class PriceUtil {
  static String? format(var price) {
    if(price != null) {
      final formatter = NumberFormat('#,###');

      return formatter.format(price);
    }else {
      return null;
    }
  }
}
