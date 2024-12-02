import 'package:flutter/material.dart';
import '/styles/fonts.dart';
import '/widgets/custom_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomInputFormField(
                controller: _controller,
                hintText: "Search a language",
                suffixIcon: const Icon(
                  Icons.search,
                  size: 32,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Popular Languages",
                style: AppFonts.lato(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Wrap(
                  children: [
                    ...List.generate(
                      128,
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
                            2304 + index,
                          ),
                          style: AppFonts.lato(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
