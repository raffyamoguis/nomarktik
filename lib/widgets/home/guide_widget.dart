import 'package:downloader_app/widgets/steps.dart';
import 'package:flutter/material.dart';

class GuideWidget extends StatelessWidget {
  const GuideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "How to download?",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Steps(
              no: "1",
              message:
                  "Open tiktok app and find the video that you want to download, and click on share.",
            ),
            SizedBox(
              height: 8.0,
            ),
            Steps(
              no: "2",
              message: "Click on copy link and close the tiktok app.",
            ),
            SizedBox(
              height: 8.0,
            ),
            Steps(
              no: "3",
              message:
                  "Open Tiktok Save app and paste the tiktok video link you copied.",
            ),
            SizedBox(
              height: 8.0,
            ),
            Steps(
              no: "4",
              message: "Wait for the application to fetch the video info.",
            ),
            SizedBox(
              height: 8.0,
            ),
            Steps(
              no: "5",
              message: "Click the download button to start downloading.",
            ),
          ],
        ),
      ),
    );
  }
}
