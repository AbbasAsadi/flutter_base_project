import 'dart:async';

import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/app/routes/app_pages.dart';
import 'package:flutter_base_project/app/utils/asset_util.dart';
import 'package:flutter_base_project/app/utils/internet_util.dart';
import 'package:flutter_base_project/app/utils/my_colors.dart';
import 'package:flutter_base_project/app/utils/pref_manager.dart';
import 'package:flutter_base_project/presentation/controllers/auth_controller.dart';
import 'package:flutter_base_project/presentation/widgets/awesome_messenger.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final RxBool inLoading = true.obs;
  final RxBool isInternetAvailable = true.obs;

  @override
  Widget build(BuildContext context) {
    _controllerListener(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfff8f9fb), Color(0xffe5e9f2)]),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  AssetUtil.getImage('logo.png'),
                  width: 250,
                ),
              ),
            ),
            Obx(() {
              if (isInternetAvailable.isTrue) {
                if (inLoading.isTrue) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 45),
                    child: LoadingAnimationWidget.inkDrop(
                      color: MyColors.primary,
                      size: 32,
                    ),
                  );
                } else {
                  var controller = Get.put(AuthController());
                  return Obx(
                    () => AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: 300,
                      // height: 120,
                      margin: const EdgeInsets.fromLTRB(30, 0, 30, 45),
                      padding: const EdgeInsets.all(25),
                      decoration: ShapeDecoration(
                        shape: SmoothRectangleBorder(
                          borderRadius: SmoothBorderRadius(
                            cornerRadius: 35,
                            cornerSmoothing: 0.6,
                          ),
                        ),
                        gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xfff7f8f9),
                              Color(0xffe5e9f2),
                              Color(0xfff4f6f9),
                              Color(0xfff3f5f9),
                            ],),
                      ),
                    ),
                  );
                }
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'خطا در اتصال به اینترنت',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextButton(
                        onPressed: () {
                          _controllerListener(context);
                        },
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تلاش مجدد',
                              style: TextStyle(
                                  color: MyColors.textColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.refresh_rounded,
                              color: MyColors.textColor,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 4,
                    ),
                    TextButton(
                        onPressed: () async {
                            AwesomeMessenger.showErrorMessage(Get.context!, 'داده آفلاین یافت نشد. اتصال اینترنت خود را بررسی نمایید.');

                        },
                        child: const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ادامه با نسخه آفلاین',
                              style: TextStyle(
                                  color: MyColors.textColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: MyColors.textColor,
                            ),
                          ],
                        ))
                  ],
                );
              }
            }),
          ],
        ),
      ),
    );
  }

  void _controllerListener(BuildContext context) {
    InternetUtil.isInternetOn().then((isInternetOn) {
      if (isInternetOn == true) {
        if (PrefManager.getInstance().isUserLogin()) {
          Timer(const Duration(seconds: 3), () {
            Get.offAllNamed(Routes.main);
          });
        } else {
          inLoading.value = false;
        }
      } else {
        isInternetAvailable.value = false;
      }
    });
  }

}
