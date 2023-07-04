import 'package:ai_awesome_message/ai_awesome_message.dart';
import 'package:flutter/material.dart';

class AwesomeMessenger {
  static Future showErrorMessage(BuildContext context, String message) {
    return Navigator.push(
      context,
      AwesomeMessageRoute(
          awesomeMessage: AwesomeMessage(
            title: 'خطا',
            titleText: const Text(
              'خطا',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              textDirection: TextDirection.rtl,
            ),
            message: message,
            messageText: Text(
              message,
              style: const TextStyle(color: Colors.white),
              textDirection: TextDirection.rtl,
            ),
            icon: const Icon(
              Icons.error_outline_sharp,
              size: 35,
              color: Colors.white,
            ),
            duration: const Duration(seconds: 3),
            margin: const EdgeInsets.all(8),
            awesomeMessagePosition: AwesomeMessagePosition.TOP,
            backgroundColor: Colors.red,
            awesomeMessageStyle: AwesomeMessageStyle.FLOATING,
            borderRadius: 8,
          ),
          theme: null
          // settings: RouteSettings(name: "/messageRouteName"),
          ),
    );
  }

  static Future showSuccessMessage(BuildContext context, String message) {
    return Navigator.push(
      context,
      AwesomeMessageRoute(
          awesomeMessage: AwesomeMessage(
            title: '',
            titleText: const Text(
              'عملیات با موفقیت انجام شد.',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              textDirection: TextDirection.rtl,
            ),
            message: message,
            messageText: Text(
              message,
              style: const TextStyle(color: Colors.white),
              textDirection: TextDirection.rtl,
            ),
            icon: const Icon(
              Icons.check_circle_outline_sharp,
              size: 32,
              color: Colors.white,
            ),
            duration: const Duration(seconds: 3),
            margin: const EdgeInsets.all(8),
            awesomeMessagePosition: AwesomeMessagePosition.TOP,
            backgroundColor: Colors.green[600]!,
            awesomeMessageStyle: AwesomeMessageStyle.FLOATING,
            borderRadius: 8,
          ),
          theme: null
          // settings: RouteSettings(name: "/messageRouteName"),
          ),
    );
  }
}
