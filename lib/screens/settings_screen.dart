import 'package:downloader_app/widgets/settings/general_settings.dart';
import 'package:downloader_app/widgets/settings/privacy_settings.dart';
import 'package:downloader_app/widgets/settings/stars_feedback.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            GeneralSettings(),
            PrivacySettings(),
            StarsFeedback(),
          ],
        ),
      ),
    );
  }
}
