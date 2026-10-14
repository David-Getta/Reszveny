import 'package:flutter/foundation.dart';
import 'package:in_app_review/in_app_review.dart';

import '../app_preferences.dart';

/// A bolt saját értékelő ablaka (App Store / Google Play / Mac App Store);
/// tesztben lecserélhető. Ahol nem érhető el (Windows, web), nem történik semmi.
Future<void> Function() requestStoreReview = () async {
  final review = InAppReview.instance;
  if (await review.isAvailable()) await review.requestReview();
};

/// Értékelés-kérés jó élmény után: a harmadik elkészült AI-elemzés után,
/// egyszer. A bolt maga dönti el, megjeleníti-e az ablakot.
class ReviewPrompt {
  static const afterAnalyses = 3;

  static Future<void> onAnalysisDone(AppPreferences prefs) async {
    final count = await prefs.countAnalysis();
    if (count < afterAnalyses || prefs.reviewAsked) return;
    await prefs.markReviewAsked();
    try {
      await requestStoreReview();
    } catch (e) {
      debugPrint('Értékelés-kérés nem sikerült: $e');
    }
  }
}
