import 'package:flutter/material.dart';
import '/models/language.dart';

import '../styles/fonts.dart';

class AlphabetsScreen extends StatefulWidget {
  final Map<String, dynamic>? extras;
  const AlphabetsScreen({
    super.key,
    this.extras,
  });

  @override
  State<AlphabetsScreen> createState() => _AlphabetsScreenState();
}

class _AlphabetsScreenState extends State<AlphabetsScreen> {
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final languageJson = widget.extras?['language'] as Map<String, dynamic>?;

    if (languageJson == null) {
      return const SizedBox.shrink();
    }
    final language = Language.fromJson(languageJson);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          controller: _scrollController,
          children: [
            // create a nice ui header for the language
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    language.name,
                    style: AppFonts.lato(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Number of Alphabets: ${language.size}",
                    style: AppFonts.lato(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),

            Center(
              child: Wrap(
                children: [
                  ...List.generate(
                    language.size,
                    (index) => Container(
                      width: 50,
                      height: 50,
                      margin: const EdgeInsets.all(4),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Text(
                        String.fromCharCode(
                          language.startIndex + index,
                        ),
                        style: AppFonts.lato(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
