// NativeAdProvider.dart
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

final nativeAdProvider = ChangeNotifierProvider<NativeAdProvider>((ref) => NativeAdProvider());

class NativeAdProvider extends ChangeNotifier {

  final String _adUnitId = Platform.isAndroid
      ? 'ca-app-pub-3940256099942544/2247696110'
      : 'ca-app-pub-3940256099942544/3986624511';

  bool shouldDisplayAd(int index) {
    // Logic to determine if an ad should be displayed at the given index
    // You can use an algorithm to determine ad placement based on your requirements
    return index % 5 == 0; // Display an ad every 5th item, for example
  }

  NativeAd getNativeAdWidget(Color backgroundColor) {
    return NativeAd(
        adUnitId: _adUnitId,
        listener: NativeAdListener(
          onAdLoaded: (ad) {
            debugPrint('$NativeAd loaded.');
          },
          onAdFailedToLoad: (ad, error) {
            // Dispose the ad here to free resources.
            debugPrint('$NativeAd failed to load: $error');
            ad.dispose();
          },
        ),
        request: const AdRequest(),
        // Styling
        nativeTemplateStyle: NativeTemplateStyle(
          // Required: Choose a template.
            templateType: TemplateType.medium,
            // Optional: Customize the ad's style.
            mainBackgroundColor: backgroundColor,
            callToActionTextStyle: NativeTemplateTextStyle(
              textColor: Colors.white,
              backgroundColor: Colors.deepOrange,
              size: 16,
              style: NativeTemplateFontStyle.bold
            ),
            primaryTextStyle: NativeTemplateTextStyle(
              textColor: Colors.white,
              backgroundColor: Colors.transparent,
              size: 16,
            ),
            secondaryTextStyle: NativeTemplateTextStyle(
              textColor: Colors.grey,
              backgroundColor: Colors.transparent,
              size: 12,
            ),
            tertiaryTextStyle: NativeTemplateTextStyle(
              textColor: Colors.grey,
              backgroundColor: Colors.transparent,
              size: 12,
            ),
            cornerRadius: 10.0,))
      ..load();
  }
}
