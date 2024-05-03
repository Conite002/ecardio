import 'package:ecardio/localization/applocalization.dart';
import 'package:flutter/material.dart';

class UnboardingContent {
  final String title;
  final String description;
  final String imageUrl;

  UnboardingContent({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}

List<UnboardingContent> contents(BuildContext context) => [
      UnboardingContent(
        title: AppLocalizations.fr['title'] ?? 'Cardiology Expertise',
        description: AppLocalizations.fr['description'] ??
            'Apprendre plus sur les maladies cardiaques',
        imageUrl: "images/screen01.png",
      ),
      UnboardingContent(
        title: AppLocalizations.fr['solution'] ?? "Best solutions",
        description: AppLocalizations.fr['solutions'] ??
            'Savoir mieux prendre soin de son coeur',
        imageUrl: "images/screen02.png",
      ),
      UnboardingContent(
        title: AppLocalizations.fr['member'] ?? "Become a member",
        description: AppLocalizations.fr['joinOurCommunity'] ??
            "Rejoignez notre communauté.",
        imageUrl: "images/screen03.png",
      ),
    ];
